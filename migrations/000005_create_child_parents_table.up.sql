CREATE TABLE IF NOT EXISTS "child_parents" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "child_id" INT DEFAULT NULL,
  "parent_id" INT DEFAULT NULL
);
