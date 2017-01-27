defmodule Store.Profile do
  alias Store.{Repo, ProfileSchema}

  def add(params) do
    changeset = ProfileSchema.build_changeset(%ProfileSchema{}, params)
    Repo.insert(changeset)
  end

  def add(params, repo) do
    changeset = ProfileSchema.build_changeset(%ProfileSchema{}, params)
    repo.insert(changeset)
  end
end
