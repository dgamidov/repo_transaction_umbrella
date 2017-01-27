defmodule Security do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Security.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: Security.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
