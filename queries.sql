-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT *
FROM `courses`
WHERE `cfu` > 10

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni 
SELECT `name`, `surname`, `date_of_birth` , TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) AS `age`
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) >= 30
ORDER BY `age`

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualisasi corso di laurea
SELECT *
FROM `courses`
WHERE `year` = 1
AND `period` = "I semestre"

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT *
FROM `exams`
WHERE `hour` > "14:00:00"
AND `date` = "2020:06:20"

-- 6. Selezionare tutti i corsi di laurea magistrale 
SELECT *
FROM `degrees`
WHERE `level` = "magistrale"

-- 7. Da quanti dipartimetni è composta l'univesità? 
SELECT COUNT(*)
FROM `departments`

-- 8. Quanti sono gli insegnati che non hanno numero di telefono? 
SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL

-- 9. Inserire nella tabella degli stundenti un nuovo record con i propri dati (per il campo dgree_id inserire un valore casuale)
INSERT INTO `students` (`degree_id`,`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`)
VALUES ( "50","Mattia" , "Messana" , "1998-06-17", "MSSMTT98H17G273A", "2024-02-14", "420", "mattia@messana.com")

-- 10. Cambiare il numero dell'ufficio del professor Artemide Rizzi (Pietro Rizzo non lo trovo) in 126
UPDATE `teachers`
SET `office_number` = "126"
WHERE `id` = 1;

-- 11. Eliminare dalla tabella studenti il record creato precedentemente al punto 9 
DELETE FROM `students`
WHERE `id` = 5002