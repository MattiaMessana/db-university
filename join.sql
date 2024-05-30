-- 1. selezionare tutti gli studenti iscritti al corso di lauera in economia
SELECT `students`.`name` AS `Nome` , `students`.`surname` AS `Cognome`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name`= "Corso di Laurea in Economia"

-- 2. selezionare tutti i corsi di lauera magistrale del dipartimento di neuroscienze 
SELECT `degrees`.`name` AS `CORSO DI LAUREA`, `degrees`.`level` AS `LIVELLO`, `departments`.`name` AS `DIPARTIMENTO`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = "Dipartimento di Neuroscienze"
AND `degrees`.`level` = "magistrale"

-- 3. selezionare tutti i corsi in cui insegna Fluvio Amato 
SELECT `teachers`.`name` AS `NOME`, `teachers`.`surname` AS `COGNOME`, `courses`.`name` AS `INSEGNAMENTO` 
FROM `teachers`
INNER JOIN `course_teacher`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`
WHERE `teachers`.`id` = 44

-- 4. selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per Cognome e nome
SELECT `students`.`surname` AS `COGNOME`,`students`.`name` AS `NOME`, `degrees`.`name` AS `CORSO DI LAUERA`, `degrees`.`level` AS `LIVELLO`, `departments`.`name` AS `DIPARTIMENTO`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `COGNOME`,`NOME` ASC
