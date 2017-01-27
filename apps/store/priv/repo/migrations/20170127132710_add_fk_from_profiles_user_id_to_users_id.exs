defmodule Store.Repo.Migrations.AddFkFromProfilesUserIdToUsersId do
  use Ecto.Migration

  @security_schema_prefix Application.fetch_env!(:store, :security_schema_prefix)
  @store_schema_prefix Application.fetch_env!(:store, :store_schema_prefix)

  def up do
    execute "ALTER TABLE #{@store_schema_prefix}.profiles
              ADD CONSTRAINT profiles_user_id_fkey
              FOREIGN KEY (user_id) REFERENCES #{@security_schema_prefix}.users (id)
              MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION"
  end

  def down do
    execute "ALTER TABLE #{@store_schema_prefix}.profiles
              DROP CONSTRAINT profiles_user_id_fkey"
  end
end
