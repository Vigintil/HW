select student_name, ifnull(sum(achivment.points), 0) as Бонус
from student 
     LEFT JOIN student_achivments USING(student_id)
     LEFT JOIN achivment USING(achivment_id)
GROUP BY 1
ORDER BY 1