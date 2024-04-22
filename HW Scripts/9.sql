select program.name_program, student.student_name, sum(student_subjects.points) as itog
from program_subjects
    INNER JOIN program USING(program_id)
    INNER JOIN student_programs USING(program_id)
    INNER JOIN student USING(student_id)
    INNER JOIN student_subjects ON student_subjects.subject_id = program_subjects.subject_id AND
                                  student_subjects.student_id = student_programs.student_id
group by 1, 2
order by 1, 3 DESC