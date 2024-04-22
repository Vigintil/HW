SELECT name_program
FROM (
    SELECT name_program, MIN(min_result) r
    FROM program
        NATURAL JOIN program_subjects
    GROUP BY 1
    HAVING r >= 40) table1
ORDER BY 1