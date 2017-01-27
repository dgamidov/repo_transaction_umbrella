defmodule Security.UserSchema do
  use Ecto.Schema
  import Ecto.Changeset

  @schema_prefix Application.fetch_env!(:security, :schema_prefix)

  schema "users" do
    field :username, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def build_changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:username])
    |> validate_required([:username])
  end
end
