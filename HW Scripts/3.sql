select name_subject, count(student_subjects.student_subject_id) as Количество, max(student_subjects.points) as Максимум, min(student_subjects.points) as Минимум, round(avg(student_subject.points), 1) as Среднее
from subject inner join student_subject using(subject_id)
GROUP BY name_subject
ORDER BY name_subject;