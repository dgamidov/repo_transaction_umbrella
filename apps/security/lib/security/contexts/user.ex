defmodule Security.User do
  alias Security.{Repo, UserSchema}

  def add(params) do
    changeset = build_changeset(params)
    Repo.insert(changeset)
  end

  def build_changeset(params) do
    changeset = UserSchema.build_changeset(%UserSchema{}, params)
  end
end
