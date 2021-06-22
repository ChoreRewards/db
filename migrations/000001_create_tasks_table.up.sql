CREATE TABLE IF NOT EXISTS "tasks" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "category_id" INT,
  "assignee_id" INT,
  "name" VARCHAR(255) NOT NULL UNIQUE,
  "description" TEXT NOT NULL DEFAULT '',
  "points" INT DEFAULT 0,
  "is_repeatable" BOOLEAN DEFAULT FALSE
);
