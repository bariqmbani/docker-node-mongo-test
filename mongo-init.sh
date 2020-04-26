#!/usr/bin/env bash

echo 'Creating application user and db'

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
  db.createUser({
    user: "$DATABASE_USERNAME",
    pwd: "$DATABASE_PASSWORD",
    roles: [
      { role: "readWrite", db: "$MONGO_INITDB_DATABASE" }
    ]
  })
EOF
