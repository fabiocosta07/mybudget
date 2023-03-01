CREATE TABLE "account" (
                           "id" int PRIMARY KEY,
                           "name" varchar
);

CREATE TABLE "area" (
                        "id" int PRIMARY KEY,
                        "name" varchar
);

CREATE TABLE "category" (
                            "id" int PRIMARY KEY,
                            "name" varchar,
                            "area_id" int
);

CREATE TABLE "transaction" (
                               "uuid" uuid PRIMARY KEY,
                               "date" int8,
                               "account_id" int,
                               "category_id" int,
                               "amount" int2,
                               "recurrence" varchar
);

ALTER TABLE "category" ADD FOREIGN KEY ("area_id") REFERENCES "area" ("id");

ALTER TABLE "transaction" ADD FOREIGN KEY ("account_id") REFERENCES "account" ("id");

ALTER TABLE "transaction" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");