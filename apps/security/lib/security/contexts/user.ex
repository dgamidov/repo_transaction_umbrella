defmodule Security.User do
  alias Security.{Repo, UserSchema}

  def add(params) do
    changeset = UserSchema.build_changeset(%UserSchema{}, params)
    Repo.insert(changeset)
  end
end
