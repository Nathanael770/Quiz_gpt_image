ALTER TABLE "quizimage$image_false" RENAME TO "a2f763cd2081426a9f69b3df84827b64";
UPDATE "system$image"
 SET "submetaobjectname" = 'a2f763cd2081426a9f69b3df84827b64'
 WHERE "submetaobjectname" = 'QuizImage.Image_false';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'a2f763cd2081426a9f69b3df84827b64'
 WHERE "submetaobjectname" = 'QuizImage.Image_false';
ALTER TABLE "quizimage$image_true" RENAME TO "4d3374648e8c4b4b97070971778a3655";
UPDATE "system$image"
 SET "submetaobjectname" = '4d3374648e8c4b4b97070971778a3655'
 WHERE "submetaobjectname" = 'QuizImage.Image_true';
UPDATE "system$filedocument"
 SET "submetaobjectname" = '4d3374648e8c4b4b97070971778a3655'
 WHERE "submetaobjectname" = 'QuizImage.Image_true';
ALTER TABLE "a2f763cd2081426a9f69b3df84827b64" RENAME TO "quizimage$image_true";
UPDATE "system$image"
 SET "submetaobjectname" = 'QuizImage.Image_true'
 WHERE "submetaobjectname" = 'a2f763cd2081426a9f69b3df84827b64';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'QuizImage.Image_true'
 WHERE "submetaobjectname" = 'a2f763cd2081426a9f69b3df84827b64';
ALTER TABLE "4d3374648e8c4b4b97070971778a3655" RENAME TO "quizimage$image_false";
UPDATE "system$image"
 SET "submetaobjectname" = 'QuizImage.Image_false'
 WHERE "submetaobjectname" = '4d3374648e8c4b4b97070971778a3655';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'QuizImage.Image_false'
 WHERE "submetaobjectname" = '4d3374648e8c4b4b97070971778a3655';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'QuizImage.Image_true', 
"table_name" = 'quizimage$image_true', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76', 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '2c9d2564-a05a-4dfa-b25e-4597e0a4c312';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'QuizImage.Image_false', 
"table_name" = 'quizimage$image_false', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76', 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = 'ed273f3e-37da-42bd-93bd-973590567cc8';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230504 12:38:30';
