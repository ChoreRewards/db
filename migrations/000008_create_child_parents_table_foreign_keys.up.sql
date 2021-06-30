-- DROP CONSTAINT ensures this is an idempotent operation
ALTER TABLE "child_parents" DROP CONSTRAINT IF EXISTS child_parents_users_1;
ALTER TABLE "child_parents" DROP CONSTRAINT IF EXISTS child_parents_users_2;

ALTER TABLE "child_parents" ADD CONSTRAINT child_parents_users_1 FOREIGN KEY ("child_id") REFERENCES "users" ("id");
ALTER TABLE "child_parents" ADD CONSTRAINT child_parents_users_2 FOREIGN KEY ("parent_id") REFERENCES "users" ("id");
