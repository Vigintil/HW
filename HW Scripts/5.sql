select name_program, max_stud
from program
where max_stud = (select max(max_stud) from program)