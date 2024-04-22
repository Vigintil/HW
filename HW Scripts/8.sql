select name_program
from program join program_subjects ps using(program_id) join subject s on ps.subject_id=s.subject_id AND name_subject in ("Информатика", "Математика")
group by 1
HAVING COUNT(name_subject)=2
order by 1