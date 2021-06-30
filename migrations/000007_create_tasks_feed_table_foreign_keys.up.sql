-- DROP CONSTAINT ensures this is an idempotent operation
ALTER TABLE "tasks_feed" DROP CONSTRAINT IF EXISTS tasks_feed_tasks_1;
ALTER TABLE "tasks_feed" DROP CONSTRAINT IF EXISTS tasks_feed_users_1;

ALTER TABLE "tasks_feed" ADD CONSTRAINT tasks_feed_tasks_1 FOREIGN KEY ("task_id") REFERENCES "tasks" ("id");
ALTER TABLE "tasks_feed" ADD CONSTRAINT tasks_feed_users_1 FOREIGN KEY ("assignee_id") REFERENCES "users" ("id");
