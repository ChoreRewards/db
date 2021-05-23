// Tables

// "tasks" holds all tasks that have
// been created, but has no concept
// of whether a task is in progress
// or not.
Table "tasks" {
  "id" INT [pk, not null,increment]
  "category_id" INT [not null]
  "assignee_id" INT [default: NULL]
  "name" VARCHAR(255) [not null]
  "description" LONGTEXT [default: NULL]
  "points" INT [not null]
  // Used for the "repeatable" tasks page.
  "is_repeatable" TINYINT(1) [not null]
}

Table "categories" {
  "id" INT [pk, not null, increment]
  "owner_id" INT [default: NULL]
  "color" VARCHAR(255) [not null]
  "name" VARCHAR(255) [not null]
  "description" LONGTEXT [default: NULL]
}

Table "users" {
  "id" INT [pk, not null, increment]
  "name" VARCHAR(255) [not null]
  "email" VARCHAR(255) [default: NULL]
  "is_admin" TINYINT(1) [not null]
  "is_parent" TINYINT(1) [not null]
  "avatar" VARCHAR(255) [default: NULL]
  "points" INT [not null]
  "salt" VARCHAR(255) [default: NULL]
  "password" VARCHAR(255) [default: NULL]
  "pin" VARCHAR(255) [default: NULL]
  "is_active" TINYINT(1) [not null]
  "created_at" DATETIME [default: NULL]
  "updated_at" DATETIME [default: NULL]
}

// "tasks_feed" holds all "in-progress"
// tasks.
Table "tasks_feed" {
  "id" INT [pk, not null, increment]
  "task_id" INT [not null]
  "is_complete" TINYINT(1) [not null]
  "is_approved" TINYINT(1) [not null]
  "completed_at" DATETIME [default: NULL]
  // Allows the override of points defined
  // in "tasks", for adhoc increases/decreases.
  "points" INT [default: NULL]
  // Allows the override of assignee defined
  // in "tasks", for adhoc assignee.
  // "assignee_id" cannot be NULL
  // in "tasks_feed" and "tasks"
  "assignee_id" INT [default: NULL]
}

Table "child_parents" {
  "id" INT [pk, not null, increment]
  "child_id" INT [default: NULL]
  "parent_id" INT [default: NULL]
}


// References
// > many-to-one; < one-to-many; - one-to-one

Ref: tasks.category_id < categories.id
Ref: tasks.assignee_id < users.id

Ref: categories.owner_id < users.id

Ref: tasks_feed.task_id < tasks.id
Ref: tasks_feed.assignee_id < users.id

Ref: child_parents.child_id < users.id
Ref: child_parents.parent_id < users.id
