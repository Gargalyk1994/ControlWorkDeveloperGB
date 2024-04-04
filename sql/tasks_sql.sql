-- 10. Удалив из таблицы верблюдов, 
-- т.к. верблюдов решили перевезти в другой питомник на зимовку. 
DROP TABLE camels;
-- Объединить таблицы лошади, и ослы в одну таблицу.
CREATE OR REPLACE VIEW view_donkey_and_horses AS 
SELECT name, birthday, commands FROM horses UNION SELECT name, birthday, commands FROM donkeys;

INSERT INTO pack_animals (name, birthday, commands)
SELECT * FROM view_donkey_and_horses;

SELECT * FROM pack_animals;


-- Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.
INSERT INTO animals (animals_name, birthday, commands)
SELECT name, birthday, commands FROM pack_animals;
INSERT INTO animals (animals_name, birthday, commands)
SELECT name, birthday, commands FROM hamsters;
INSERT INTO animals (animals_name, birthday, commands)
SELECT name, birthday, commands FROM dogs;
INSERT INTO animals (animals_name, birthday, commands)
SELECT name, birthday, commands FROM cats;

SELECT * FROM animals;

-- Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, 
-- но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице

DROP TABLE IF EXISTS young_animal;
CREATE TABLE young_animal (
id INT PRIMARY KEY AUTO_INCREMENT,
young_animal_name VARCHAR(50),
birthday Datetime,
commands VARCHAR(200));

INSERT INTO young_animal (id, young_animal_name, birthday, commands)
SELECT id, animals_name, birthday, commands
FROM animals
WHERE TIMESTAMPDIFF(MONTH, birthday, NOW()) BETWEEN 12 AND 36; 

SELECT * FROM young_animal;
