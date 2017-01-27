defmodule Security.Repo.Migrations.CreateTableUsersInSchemaSecurity do
  use Ecto.Migration

  @schema_prefix Application.fetch_env!(:security, :schema_prefix)

  def change do
    create table(:users, prefix: @schema_prefix) do
      add :username, :string, null: false

      timestamps()
    end
  end
end
