ALTER TABLE "quizcarte$test_account" DROP CONSTRAINT "uniq_quizcarte$test_account_quizcarte$testid";
DROP INDEX "idx_quizcarte$test_account_administration$account_quizcarte$test";
ALTER TABLE "quizcarte$test" RENAME TO "quizimage$test";
ALTER TABLE "quizcarte$test_account" RENAME TO "quizimage$test_account";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'QuizImage.Test', 
"table_name" = 'quizimage$test', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '55253436-1b89-4ecf-9837-e6171400cb4a';
ALTER TABLE "quizimage$test_account" ALTER COLUMN "quizcarte$testid" RENAME TO "quizimage$testid";
CREATE INDEX "idx_quizimage$test_account_administration$account_quizimage$test" ON "quizimage$test_account" ("administration$accountid" ASC,"quizimage$testid" ASC);
ALTER TABLE "quizimage$test_account" ADD CONSTRAINT "uniq_quizimage$test_account_quizimage$testid" UNIQUE ("quizimage$testid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_quizcarte$test_account_quizcarte$testid' AND "column_id" = 'e41cd189-d90d-3e4e-a11f-77ec0b51fe39';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_quizimage$test_account_quizimage$testid', 
'a54ad58f-531c-4d46-8cfc-2361d5660a00', 
'e41cd189-d90d-3e4e-a11f-77ec0b51fe39');
UPDATE "mendixsystem$association"
 SET "association_name" = 'QuizImage.Test_Account', 
"table_name" = 'quizimage$test_account', 
"parent_entity_id" = '55253436-1b89-4ecf-9837-e6171400cb4a', 
"child_entity_id" = 'ec66fba1-2aad-4b62-892b-95a146ec7e22', 
"parent_column_name" = 'quizimage$testid', 
"child_column_name" = 'administration$accountid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_quizimage$test_account_administration$account_quizimage$test'
 WHERE "id" = 'a54ad58f-531c-4d46-8cfc-2361d5660a00';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230502 13:24:04';
