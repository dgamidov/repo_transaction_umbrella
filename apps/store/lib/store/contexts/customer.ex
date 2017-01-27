defmodule Store.Customer do
  alias Ecto.Multi
  alias Store.{Repo, Profile}
  alias Security.User

  def add(params) when is_map(params) do
    multi =
      Multi.new
      |> Multi.run(:user, fn _ -> User.add(params, Repo) end)
      |> Multi.run(:profile, fn %{user: user} ->
        params
        |> Map.put_new("user_id", user.id)
        |> Profile.add(Repo)
      end)

    case Repo.transaction(multi) do
      {:ok, result} -> {:ok, result}
      {:error, :user, changeset, %{}} -> {:error, :user, changeset}
      {:error, :profile, changeset, %{}} -> {:error, :profile, changeset}
    end
  end
end
