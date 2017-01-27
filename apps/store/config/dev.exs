use Mix.Config

config :store, Store.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "store_dev",
  hostname: "localhost",
  pool_size: 10
