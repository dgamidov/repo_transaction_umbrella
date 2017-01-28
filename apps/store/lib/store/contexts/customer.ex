defmodule Store.Customer do
  alias Ecto.Multi
  alias Store.{Repo, Profile}
  alias Security.User

  def add(params) when is_map(params) do
    user_changeset = User.build_changeset(params)

    multi =
      Multi.new
      |> Multi.insert(:user, user_changeset)
      |> Multi.run(:profile, fn %{user: user} ->
        params
        |> Map.put_new("user_id", user.id)
        |> Profile.build_changeset()
        |> Repo.insert()
      end)

    case Repo.transaction(multi) do
      {:ok, result} -> {:ok, result}
      {:error, :user, changeset, %{}} -> {:error, :user, changeset}
      {:error, :profile, changeset, %{}} -> {:error, :profile, changeset}
    end
  end
end
