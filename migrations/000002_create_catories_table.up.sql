CREATE TABLE IF NOT EXISTS "categories" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "owner_id" INT DEFAULT NULL,
  "color" VARCHAR(255) DEFAULT NULL,
  "name" VARCHAR(255) NOT NULL,
  "description" TEXT DEFAULT NULL
);
