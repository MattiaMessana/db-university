-- 1. contare quanti iscritti ci sono stati ogni anno 
SELECT COUNT(`id`) AS `ISCRITTI`, YEAR(`students`.`enrolment_date`) AS `ANNO`
FROM `students`
GROUP BY `ANNO`;

-- 2. contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT (`teachers`.`office_number`) AS `EDIFICIO` , COUNT(`id`) AS `N. DI INSEGNANTI` 
FROM `teachers` 
GROUP BY `EDIFICIO`; 

SELECT COUNT(`id`) AS `INSEGNANTI N.`, `office_address` AS `EDIFICIO`
FROM `teachers`
GROUP BY  `EDIFICIO`;

-- 3. calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id` AS `ESAME`, AVG(`exam_student`.`vote`) AS `MEDIA VOTO`
FROM `exam_student`
GROUP BY `ESAME`;

-- 4. contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`id`) AS `CORSO DI LAUREA`, `department_id` AS `DIPARTIMENTO`
FROM `degrees`
GROUP BY `DIPARTIMENTO`

-- variante con join per stampare il nome del dipartimento
SELECT COUNT(`degrees`.`id`) AS `n. CORSO DI LAUREA`, `departments`.`name` AS `DIPARTIMENTO`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.department_id = `departments`.`id`
GROUP BY `department_id`
