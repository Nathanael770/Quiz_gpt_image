ALTER TABLE "quizimage$image_true" ADD "n" INT NULL;
UPDATE "quizimage$image_true"
 SET "n" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('43f67ecf-6942-4aff-b870-2df062b49fff', 
'2c9d2564-a05a-4dfa-b25e-4597e0a4c312', 
'n', 
'n', 
3, 
0, 
'0', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230504 13:07:36';
