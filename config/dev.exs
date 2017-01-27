use Mix.Config

config :security, Security.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "repo_transaction_umbrella_dev",
  hostname: "localhost",
  pool_size: 10

config :store, Store.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "repo_transaction_umbrella_dev",
  hostname: "localhost",
  pool_size: 10
