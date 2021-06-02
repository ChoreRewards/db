-- DROP CONSTAINT ensures this is an idempotent operation
ALTER TABLE "categories" DROP CONSTRAINT IF EXISTS categories_users_1;

ALTER TABLE "categories" ADD CONSTRAINT categories_users_1 FOREIGN KEY ("owner_id") REFERENCES "users" ("id");
