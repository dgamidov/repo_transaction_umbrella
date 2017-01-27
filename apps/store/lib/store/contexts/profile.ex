defmodule Store.Profile do
  alias Store.{Repo, ProfileSchema}

  def add(params) do
    changeset = ProfileSchema.build_changeset(%ProfileSchema{}, params)
    Repo.insert(changeset)
  end
end
