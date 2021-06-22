CREATE TABLE IF NOT EXISTS "categories" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "owner_id" INT DEFAULT NULL,
  "color" VARCHAR(255) NOT NULL DEFAULT '',
  "name" VARCHAR(255) NOT NULL UNIQUE,
  "description" TEXT NOT NULL DEFAULT ''
);
