-- DROP CONSTAINT ensures this is an idempotent operation
ALTER TABLE "tasks" DROP CONSTRAINT IF EXISTS tasks_categories_1;

ALTER TABLE "tasks" ADD CONSTRAINT tasks_categories_1 FOREIGN KEY ("category_id") REFERENCES "categories" ("id");
