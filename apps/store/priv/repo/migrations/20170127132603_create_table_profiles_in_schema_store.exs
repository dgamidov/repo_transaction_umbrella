defmodule Store.Repo.Migrations.CreateTableProfilesInSchemaStore do
  use Ecto.Migration

  @schema_prefix Application.fetch_env!(:store, :store_schema_prefix)

  def change do
    create table(:profiles, prefix: @schema_prefix) do
      add :name, :string, null: false
      add :user_id, :integer

      timestamps()
    end
  end
end
