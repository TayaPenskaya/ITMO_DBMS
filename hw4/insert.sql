insert into groups
    (group_id, group_name) values
    (1, 'M3435'),
    (2, 'M3436'),
    (3, 'M3437'),
    (4, 'M3439');
insert into student
    (student_id, student_name, group_id) values
    (1, 'Катя Мандрощенко', 1),
    (2, 'Диана Кудайбердиева', 1),
    (3, 'Никита Кочетков', 2),
    (4, 'Софья Поварова', 3),
    (5, 'Алена Антонова', 3);
insert into course
    (course_id, course_name) values
    (1, 'dbms'),
    (2, 'ml');
insert into lecturer
    (lecturer_id, lecturer_name) values
    (1, 'Корнеев Г.А.'),
    (2, 'Фильченков А.А.');
insert into student_mark 
    (student_id, course_id, mark) values
    (1, 1, 4),
    (2, 2, 5),
    (3, 1, 5),
    (4, 2, 4),
    (4, 1, 4),
    (5, 1, 5);
insert into plan
    (course_id, group_id, lecturer_id) values
    (1, 1, 1),
    (1, 3, 1),
    (2, 2, 2),
    (2, 3, 2);