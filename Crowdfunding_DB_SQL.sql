DROP TABLE "Campaign";

CREATE TABLE "campaign" (
    "cf_id" INTEGER NOT NULL,
    "contact_id" INTEGER NOT NULL,
    "company_name" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR NOT NULL,
    "backers_count" INTEGER NOT NULL,
    "country" VARCHAR NOT NULL,
    "currency" VARCHAR NOT NULL,  -- Changed to VARCHAR, as currency is typically a string (e.g., "USD")
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category" VARCHAR NOT NULL,
    "subcategory" VARCHAR NOT NULL,
    "category_id" VARCHAR NOT NULL,
    "subcategory_id" VARCHAR NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")  -- Set cf_id as the primary key
);


CREATE TABLE "category" (
    "category_id" VARCHAR NOT NULL PRIMARY KEY,  -- Added primary key
    "category" VARCHAR NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR NOT NULL PRIMARY KEY,  -- Added primary key
    "subcategory" VARCHAR NOT NULL
);

DROP TABLE "Contacts";
CREATE TABLE "contacts" (
    "contact_id" INTEGER NOT NULL PRIMARY KEY,  -- Added primary key
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "email" VARCHAR NOT NULL
);

-- Foreign key constraints
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category" FOREIGN KEY ("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory" FOREIGN KEY ("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact" FOREIGN KEY ("contact_id")
REFERENCES "Contacts" ("contact_id");

SELECT * 
FROM campaign;

SELECT * 
FROM category;

SELECT * 
FROM subcategory;

SELECT * 
FROM contacts;
