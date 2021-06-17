CREATE TABLE IF NOT EXISTS "tasks_feed" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "task_id" INT,
  "is_complete" BOOLEAN DEFAULT FALSE,
  "is_approved" BOOLEAN DEFAULT FALSE,
  "completed_at" TIMESTAMP DEFAULT NULL,
  "points" INT DEFAULT NULL,
  "assignee_id" INT DEFAULT NULL
);
