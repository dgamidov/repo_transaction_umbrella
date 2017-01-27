defmodule Store do
  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Store.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: Store.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
