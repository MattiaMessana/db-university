-- 1. contare quanti iscritti ci sono stati ogni anno 
SELECT COUNT(`id`) AS `ISCRITTI`, YEAR(`students`.`enrolment_date`) AS `ANNO`
FROM `students`
GROUP BY `ANNO`;

-- 2. contare gli inegnanti che hanno l'ufficio nello stesso edificio
SELECT (`teachers`.`office_number`) AS `EDIFICIO` , COUNT(`id`) AS `N. DI INSEGNANTI` 
FROM `teachers` 
GROUP BY `EDIFICIO`; 

SELECT COUNT(`id`) AS `INSEGNANTI N.`, `office_address` AS `EDIFICIO`
FROM `teachers`
GROUP BY  `EDIFICIO`;

-- 3. calcolare la media dei voti di ogni appello d'esame
