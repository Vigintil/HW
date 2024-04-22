select student_name
from student inner join student_programs using(student_id) inner join program using(program_id)
where  program.name_program = "name_program"
order by student_firstname, student_lastname, student_middlename ASC