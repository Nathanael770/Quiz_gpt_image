CREATE SEQUENCE "quizimage$test_testnumber_mxseq" AS BIGINT START WITH 1;
ALTER TABLE "quizimage$test" ADD "testnumber" BIGINT NULL;
UPDATE "quizimage$test"
 SET "testnumber" = NEXT VALUE FOR "quizimage$test_testnumber_mxseq";
ALTER TABLE "quizimage$test" ADD "createddate" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e48ec5cf-ed5b-4677-ab40-67cb76ee7795', 
'55253436-1b89-4ecf-9837-e6171400cb4a', 
'TestNumber', 
'testnumber', 
0, 
0, 
'1', 
true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", 
"name", 
"start_value", 
"current_value")
 VALUES ('e48ec5cf-ed5b-4677-ab40-67cb76ee7795', 
'quizimage$test_testnumber_mxseq', 
1, 
13);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('43985686-0b0a-3f0b-86ab-663f22329d2b', 
'55253436-1b89-4ecf-9837-e6171400cb4a', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230503 16:23:46';
