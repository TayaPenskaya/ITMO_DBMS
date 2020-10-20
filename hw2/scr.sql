insert into groups
    (group_id, group_name) values
    (1, 'M3435'),
    (2, 'M3436'),
    (3, 'M3437'),
    (4, 'M3439');
insert into person 
    (person_id, first_name, last_name) values
    (1, 'Катя', 'Мандрощенко'),
    (2, 'Диана', 'Кудайбердиева'),
    (3, 'Никита', 'Кочетков'),
    (4, 'Софья', 'Поварова');
insert into course
    (course_id, course_name) values
    (1, 'dbms'),
    (2, 'ml');
insert into student
    (student_id, group_id) values
    (1, 1),
    (2, 2);
insert into person_student
    (person_id, student_id) values
    (1, 1),
    (3, 2);
insert into teacher
    (teacher_id) values
    (1);
insert into person_teacher
    (person_id, teacher_id) values
    (4, 1);   
insert into teacher_course
    (teacher_id, course_id) values
    (1, 2);
insert into mark
    (score, semester, course_id) values
    (5, 7, 2),
    (4, 2, 2);
insert into student_mark
    (student_id, course_id, score) values
    (1, 2, 5),
    (2, 2, 4);