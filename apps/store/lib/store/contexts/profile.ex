defmodule Store.Profile do
  alias Store.{Repo, ProfileSchema}

  def add(params) do
    changeset = build_changeset(params)
    Repo.insert(changeset)
  end

  def build_changeset(params) do
    changeset = ProfileSchema.build_changeset(%ProfileSchema{}, params)
  end
end
