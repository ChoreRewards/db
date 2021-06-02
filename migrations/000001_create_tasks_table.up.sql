CREATE TABLE IF NOT EXISTS "tasks" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "category_id" INT NOT NULL,
  "assignee_id" INT DEFAULT NULL,
  "name" VARCHAR(255) NOT NULL,
  "description" TEXT DEFAULT NULL,
  "points" INT NOT NULL,
  "is_repeatable" BOOLEAN NOT NULL
);
