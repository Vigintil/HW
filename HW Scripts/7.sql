SELECT name_faculty, name_program, max_stud,
	COUNT(*) AS Количество,
	ROUND(COUNT(*)/max_stud ,2) AS Конкурс
FROM student_programs
	JOIN program USING (program_id)
	JOIN faculty USING (faculty_id)
GROUP BY name_faculty, name_program, max_stud
ORDER BY Конкурс DESC