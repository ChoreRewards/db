CREATE TABLE "tasks" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "category_id" INT NOT NULL,
  "assignee_id" INT DEFAULT NULL,
  "name" VARCHAR(255) NOT NULL,
  "description" LONGTEXT DEFAULT NULL,
  "points" INT NOT NULL,
  "is_repeatable" TINYINT(1) NOT NULL
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "owner_id" INT DEFAULT NULL,
  "color" VARCHAR(255) NOT NULL,
  "name" VARCHAR(255) NOT NULL,
  "description" LONGTEXT DEFAULT NULL
);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" VARCHAR(255) NOT NULL,
  "email" VARCHAR(255) DEFAULT NULL,
  "is_admin" TINYINT(1) NOT NULL,
  "is_parent" TINYINT(1) NOT NULL,
  "avatar" VARCHAR(255) DEFAULT NULL,
  "points" INT NOT NULL,
  "salt" VARCHAR(255) DEFAULT NULL,
  "password" VARCHAR(255) DEFAULT NULL,
  "pin" VARCHAR(255) DEFAULT NULL,
  "is_active" TINYINT(1) NOT NULL,
  "created_at" DATETIME DEFAULT NULL,
  "updated_at" DATETIME DEFAULT NULL
);

CREATE TABLE "tasks_feed" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "task_id" INT NOT NULL,
  "is_complete" TINYINT(1) NOT NULL,
  "is_approved" TINYINT(1) NOT NULL,
  "completed_at" DATETIME DEFAULT NULL,
  "points" INT DEFAULT NULL,
  "assignee_id" INT DEFAULT NULL
);

CREATE TABLE "child_parents" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "child_id" INT DEFAULT NULL,
  "parent_id" INT DEFAULT NULL
);

ALTER TABLE "categories" ADD FOREIGN KEY ("id") REFERENCES "tasks" ("category_id");

ALTER TABLE "users" ADD FOREIGN KEY ("id") REFERENCES "tasks" ("assignee_id");

ALTER TABLE "users" ADD FOREIGN KEY ("id") REFERENCES "categories" ("owner_id");

ALTER TABLE "tasks" ADD FOREIGN KEY ("id") REFERENCES "tasks_feed" ("task_id");

ALTER TABLE "users" ADD FOREIGN KEY ("id") REFERENCES "tasks_feed" ("assignee_id");

ALTER TABLE "users" ADD FOREIGN KEY ("id") REFERENCES "child_parents" ("child_id");

ALTER TABLE "users" ADD FOREIGN KEY ("id") REFERENCES "child_parents" ("parent_id");
