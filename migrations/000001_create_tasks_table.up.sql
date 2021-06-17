CREATE TABLE IF NOT EXISTS "tasks" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "category_id" INT,
  "assignee_id" INT,
  "name" VARCHAR(255) NOT NULL,
  "description" TEXT DEFAULT NULL,
  "points" INT DEFAULT 0,
  "is_repeatable" BOOLEAN DEFAULT FALSE
);
