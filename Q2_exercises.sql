#Q2 exercise a
select student.ID,student.name from student left join takes on takes.ID = student.ID and year < 2017
where takes.ID is null;

#Q2 exercise b
 select distinct student.ID,student.name  from student inner join takes on takes.ID = student.ID
	inner join course on course.course_id = takes.course_id
	where course.dept_name = "Comp. Sci.";
    
#Q2 exercise c
select dept_name,max(salary) from instructor
	group by dept_name;
    
#Q2 exercise d
 update instructor
	set salary = salary * 1.15
    where dept_name = "Comp. Sci.";

#Q2 exercise e
INSERT INTO takes (id, course_id, sec_id, semester, year) 
SELECT student.id,'CS-001', '1', 'Fall', 2017
FROM student 
WHERE student.dept_name = 'Comp. Sci.';