ALTER TABLE "myfirstmodule$test" DROP COLUMN "testn";
ALTER TABLE "myfirstmodule$test" ADD "score" INT NULL;
UPDATE "myfirstmodule$test"
 SET "score" = 0;
ALTER TABLE "myfirstmodule$test" ADD "compteur" INT NULL;
UPDATE "myfirstmodule$test"
 SET "compteur" = 1;
ALTER TABLE "myfirstmodule$test" ADD "score_pourcentage" DECIMAL(28, 8) NULL;
UPDATE "myfirstmodule$test"
 SET "score_pourcentage" = 0;
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '55253436-1b89-4ecf-9837-e6171400cb4a', 
"attribute_name" = 'Score', 
"column_name" = 'score', 
"type" = 3, 
"length" = 0, 
"default_value" = '0', 
"is_auto_number" = false
 WHERE "id" = '6f637788-dd3d-4910-a3aa-4c1c625ed95e';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('d94df9be-14d7-487f-8c11-fb64408ca94b', 
'55253436-1b89-4ecf-9837-e6171400cb4a', 
'Compteur', 
'compteur', 
3, 
0, 
'1', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('618cf71d-c98e-4400-8f6c-9762d103bf9f', 
'55253436-1b89-4ecf-9837-e6171400cb4a', 
'Score_Pourcentage', 
'score_pourcentage', 
5, 
0, 
'0', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230501 15:43:04';
