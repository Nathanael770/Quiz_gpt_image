CREATE TABLE "myfirstmodule$test" (
	"id" BIGINT NOT NULL,
	"testn" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('55253436-1b89-4ecf-9837-e6171400cb4a', 
'MyFirstModule.Test', 
'myfirstmodule$test', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('6f637788-dd3d-4910-a3aa-4c1c625ed95e', 
'55253436-1b89-4ecf-9837-e6171400cb4a', 
'testN', 
'testn', 
30, 
200, 
'', 
false);
CREATE TABLE "myfirstmodule$test_account" (
	"myfirstmodule$testid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$testid","administration$accountid"),
	CONSTRAINT "uniq_myfirstmodule$test_account_myfirstmodule$testid" UNIQUE ("myfirstmodule$testid"));
CREATE INDEX "idx_myfirstmodule$test_account_administration$account_myfirstmodule$test" ON "myfirstmodule$test_account" ("administration$accountid" ASC,"myfirstmodule$testid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('a54ad58f-531c-4d46-8cfc-2361d5660a00', 
'MyFirstModule.Test_Account', 
'myfirstmodule$test_account', 
'55253436-1b89-4ecf-9837-e6171400cb4a', 
'ec66fba1-2aad-4b62-892b-95a146ec7e22', 
'myfirstmodule$testid', 
'administration$accountid', 
'idx_myfirstmodule$test_account_administration$account_myfirstmodule$test');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$test_account_myfirstmodule$testid', 
'a54ad58f-531c-4d46-8cfc-2361d5660a00', 
'e41cd189-d90d-3e4e-a11f-77ec0b51fe39');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230501 13:34:57';
