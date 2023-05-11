ALTER TABLE "quizimage$image" RENAME TO "quizimage$image_true";
UPDATE "system$image"
 SET "submetaobjectname" = 'QuizImage.Image_true'
 WHERE "submetaobjectname" = 'QuizImage.Image';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'QuizImage.Image_true'
 WHERE "submetaobjectname" = 'QuizImage.Image';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'QuizImage.Image_true', 
"table_name" = 'quizimage$image_true', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76', 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = 'ed273f3e-37da-42bd-93bd-973590567cc8';
CREATE TABLE "quizimage$image_false" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('2c9d2564-a05a-4dfa-b25e-4597e0a4c312', 
'QuizImage.Image_false', 
'quizimage$image_false', 
'37827192-315d-4ab6-85b8-f626f866ea76', 
false, 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230504 12:15:15';
