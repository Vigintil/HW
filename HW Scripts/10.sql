select name_program, student_name
from student
     JOIN student_programs USING(student_id)
     JOIN program USING(program_id)
     JOIN program_subjects USING(program_id)
     JOIN subject USING(subject_id)
     JOIN student_subjects USING(subject_id, student_id)
where points < min_points
order by 1, 2