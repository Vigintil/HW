select name_program
from program inner join program_subjects using(program_id) inner join subject using(subject_id)
where subject.name_subject = "name_subject"
order by name_program DESC