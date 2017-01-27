use Mix.Config

config :security, Security.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "security_dev",
  hostname: "localhost",
  pool_size: 10
