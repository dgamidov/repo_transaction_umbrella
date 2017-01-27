defmodule Security.User do
  alias Security.{Repo, UserSchema}

  def add(params) do
    changeset = UserSchema.build_changeset(%UserSchema{}, params)
    Repo.insert(changeset)
  end

  def add(params, repo) do
    changeset = UserSchema.build_changeset(%UserSchema{}, params)
    repo.insert(changeset)
  end
end
