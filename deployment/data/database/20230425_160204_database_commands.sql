CREATE TABLE "myfirstmodule$input" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(500) NULL,
	"at" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('c37bcfde-8edb-4a5d-be9c-d931bff3bbf4', 
'MyFirstModule.Input', 
'myfirstmodule$input', 
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
 VALUES ('9cd2d378-96fb-47ab-9a94-4ced11388717', 
'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4', 
'Value', 
'value', 
30, 
500, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('b37d35ad-42ab-442c-86d6-c16e32ece394', 
'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4', 
'at', 
'at', 
10, 
0, 
'false', 
false);
CREATE TABLE "myfirstmodule$input_test" (
	"myfirstmodule$inputid" BIGINT NOT NULL,
	"myfirstmodule$testid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$inputid","myfirstmodule$testid"),
	CONSTRAINT "uniq_myfirstmodule$input_test_myfirstmodule$testid" UNIQUE ("myfirstmodule$testid"),
	CONSTRAINT "uniq_myfirstmodule$input_test_myfirstmodule$inputid" UNIQUE ("myfirstmodule$inputid"));
CREATE INDEX "idx_myfirstmodule$input_test_myfirstmodule$test_myfirstmodule$input" ON "myfirstmodule$input_test" ("myfirstmodule$testid" ASC,"myfirstmodule$inputid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('3ef873aa-ebdb-45ef-a6f9-2c85d09d5eda', 
'MyFirstModule.Input_test', 
'myfirstmodule$input_test', 
'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4', 
'49c7d2c3-adb9-4d98-9bde-d74fe5cedd1d', 
'myfirstmodule$inputid', 
'myfirstmodule$testid', 
'idx_myfirstmodule$input_test_myfirstmodule$test_myfirstmodule$input');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$input_test_myfirstmodule$testid', 
'3ef873aa-ebdb-45ef-a6f9-2c85d09d5eda', 
'e3fc4219-a066-3642-b641-2f088886fc16');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$input_test_myfirstmodule$inputid', 
'3ef873aa-ebdb-45ef-a6f9-2c85d09d5eda', 
'27919edb-5f10-3848-99b2-9e79991902cf');
CREATE TABLE "myfirstmodule$test" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('49c7d2c3-adb9-4d98-9bde-d74fe5cedd1d', 
'MyFirstModule.test', 
'myfirstmodule$test', 
false, 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230425 16:02:04';
