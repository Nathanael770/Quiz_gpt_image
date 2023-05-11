ALTER TABLE "myfirstmodule$test_account" DROP CONSTRAINT "uniq_myfirstmodule$test_account_myfirstmodule$testid";
DROP INDEX "idx_myfirstmodule$test_account_administration$account_myfirstmodule$test";
ALTER TABLE "myfirstmodule$test" RENAME TO "quizcarte$test";
ALTER TABLE "myfirstmodule$test_account" RENAME TO "quizcarte$test_account";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'QuizCarte.Test', 
"table_name" = 'quizcarte$test', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '55253436-1b89-4ecf-9837-e6171400cb4a';
ALTER TABLE "quizcarte$test_account" ALTER COLUMN "myfirstmodule$testid" RENAME TO "quizcarte$testid";
CREATE INDEX "idx_quizcarte$test_account_administration$account_quizcarte$test" ON "quizcarte$test_account" ("administration$accountid" ASC,"quizcarte$testid" ASC);
ALTER TABLE "quizcarte$test_account" ADD CONSTRAINT "uniq_quizcarte$test_account_quizcarte$testid" UNIQUE ("quizcarte$testid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_myfirstmodule$test_account_myfirstmodule$testid' AND "column_id" = 'e41cd189-d90d-3e4e-a11f-77ec0b51fe39';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_quizcarte$test_account_quizcarte$testid', 
'a54ad58f-531c-4d46-8cfc-2361d5660a00', 
'e41cd189-d90d-3e4e-a11f-77ec0b51fe39');
UPDATE "mendixsystem$association"
 SET "association_name" = 'QuizCarte.Test_Account', 
"table_name" = 'quizcarte$test_account', 
"parent_entity_id" = '55253436-1b89-4ecf-9837-e6171400cb4a', 
"child_entity_id" = 'ec66fba1-2aad-4b62-892b-95a146ec7e22', 
"parent_column_name" = 'quizcarte$testid', 
"child_column_name" = 'administration$accountid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_quizcarte$test_account_administration$account_quizcarte$test'
 WHERE "id" = 'a54ad58f-531c-4d46-8cfc-2361d5660a00';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230501 17:09:37';
