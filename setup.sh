#!/bin/bash

mix ecto.create -r Security.Repo

mix ecto.migrate -r Security.Repo
mix ecto.migrate -r Store.Repo
