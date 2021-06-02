CREATE TABLE IF NOT EXISTS "tasks_feed" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "task_id" INT NOT NULL,
  "is_complete" BOOLEAN NOT NULL,
  "is_approved" BOOLEAN NOT NULL,
  "completed_at" TIMESTAMP DEFAULT NULL,
  "points" INT DEFAULT NULL,
  "assignee_id" INT DEFAULT NULL
);
