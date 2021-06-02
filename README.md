# db

## Purpose

This repository hold the database design and migration scripts of ChoreRewards

## Running DB migrations

* Run postgres using `docker compose` - `docker-compose up -d` (**Note**: unless you're just testing ChoreRewards, you should change the secrets to something much more secure)
* Run migrations with `go run main.go`

## Logging into the postgres container

* Sometimes it's useful to log into the Postgres container, for testing purposes. This can be done with the `docker exec -it chorerewards_db psql -U chorerewards -W chorerewards` command, followed by the specified password (`supersecretpassword` by default). **NOTE:** This MUST only be done in the development/testing environment only.

## ToDo

* [ ] Add `rewards` table, which shows a list of things that can be purchased with points
* [ ] Add `transactions` table, which shows a list of purchases
* [ ] Use environment variables for migration connection string
