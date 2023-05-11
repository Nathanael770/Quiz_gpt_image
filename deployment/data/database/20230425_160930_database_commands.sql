ALTER TABLE "myfirstmodule$test" RENAME TO "7953411d63314ad4b144538185416db8";
ALTER TABLE "myfirstmodule$input" RENAME TO "b27779c2685245e9bd22a4808d24be5d";
ALTER TABLE "myfirstmodule$input_test" DROP CONSTRAINT "uniq_myfirstmodule$input_test_myfirstmodule$inputid";
ALTER TABLE "myfirstmodule$input_test" DROP CONSTRAINT "uniq_myfirstmodule$input_test_myfirstmodule$testid";
DROP INDEX "idx_myfirstmodule$input_test_myfirstmodule$test_myfirstmodule$input";
ALTER TABLE "myfirstmodule$input_test" RENAME TO "1fb7a8113c83455991c279ba82adc074";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '49c7d2c3-adb9-4d98-9bde-d74fe5cedd1d';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '49c7d2c3-adb9-4d98-9bde-d74fe5cedd1d';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '49c7d2c3-adb9-4d98-9bde-d74fe5cedd1d');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '49c7d2c3-adb9-4d98-9bde-d74fe5cedd1d';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '49c7d2c3-adb9-4d98-9bde-d74fe5cedd1d';
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = 'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = 'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = 'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = 'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = 'c37bcfde-8edb-4a5d-be9c-d931bff3bbf4';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '3ef873aa-ebdb-45ef-a6f9-2c85d09d5eda';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_myfirstmodule$input_test_myfirstmodule$inputid' AND "column_id" = '27919edb-5f10-3848-99b2-9e79991902cf';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_myfirstmodule$input_test_myfirstmodule$testid' AND "column_id" = 'e3fc4219-a066-3642-b641-2f088886fc16';
DROP TABLE "7953411d63314ad4b144538185416db8";
DROP TABLE "b27779c2685245e9bd22a4808d24be5d";
DROP TABLE "1fb7a8113c83455991c279ba82adc074";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230425 16:09:30';
