create table groups (
    group_id int not null,
    group_name varchar(50) not null,
    constraint groups_pk primary key (group_id),
    constraint groups_uk unique (group_name)
);
create table student (
    student_id int not null,
    student_name varchar(50) not null,
    group_id int not null,
    constraint student_pk primary key (student_id),
    constraint student_group_fk foreign key (group_id) 
    references groups(group_id) 
);
create table course (
    course_id int not null,
    course_name varchar(50) not null,
    constraint course_pk primary key (course_id)
);
create table lecturer (
    lecturer_id int not null,
    lecturer_name varchar(50) not null,
    constraint lecturer_pk primary key (lecturer_id)
);
create table student_mark (
    student_id int not null,
    course_id int not null,
    mark int not null, 
    constraint sm_pk primary key (student_id, course_id),
    constraint sm_student_fk foreign key (student_id) 
    references student(student_id),
    constraint sm_course_fk foreign key (course_id) 
    references course(course_id)
);
create table plan (
    course_id int not null,
    group_id int not null,
    lecturer_id int not null,
    constraint plan_pk primary key (course_id, group_id),
    constraint plan_course_fk foreign key (course_id) 
    references course(course_id),
    constraint plan_group_fk foreign key (group_id) 
    references groups(group_id),
    constraint plan_lecturer_fk foreign key (lecturer_id) 
    references lecturer(lecturer_id)
);