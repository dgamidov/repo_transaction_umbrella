defmodule Store.ProfileSchema do
  use Ecto.Schema
  import Ecto.Changeset

  @schema_prefix Application.fetch_env!(:store, :store_schema_prefix)

  schema "profiles" do
    field :name, :string

    belongs_to :user, Security.UserSchema

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def build_changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:user_id, :name])
    |> validate_required([:user_id, :name])
    |> assoc_constraint(:user)
  end
end
