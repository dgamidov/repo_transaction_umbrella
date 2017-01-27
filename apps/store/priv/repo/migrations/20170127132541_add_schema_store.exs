defmodule Store.Repo.Migrations.AddSchemaStore do
  use Ecto.Migration

  @schema_prefix Application.fetch_env!(:store, :store_schema_prefix)

  def up do
    execute "create schema #{@schema_prefix}"
  end

  def down do
    execute "drop schema #{@schema_prefix}"
  end
end
