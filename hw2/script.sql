create table groups (
    group_id int not null,
    group_name varchar(50) not null,
    constraint groups_pk primary key (group_id)
);
create table person (
    person_id int not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    birthday date,
    constraint person_pk primary key (person_id)
);
create table course (
    course_id int not null,
    course_name varchar(50) not null,
    constraint course_pk primary key (course_id)
);
create table student (
    student_id int not null,
    group_id int not null,
    constraint student_pk primary key (student_id),
    constraint student_group_fk foreign key (group_id) 
    references groups(group_id) 
);
create table person_student (
    person_id int not null,
    student_id int not null,
    constraint ps_pk primary key (person_id),
    constraint ps_uk unique (student_id),
    constraint ps_student_fk foreign key (student_id) 
    references student(student_id),
    constraint ps_person_fk foreign key (person_id) 
    references person(person_id)
);
create table teacher (
    teacher_id int not null,
    constraint teacher_pk primary key (teacher_id)
);
create table person_teacher (
    person_id int not null,
    teacher_id int not null,
    constraint pt_pk primary key (person_id),
    constraint pt_uk unique (teacher_id),
    constraint pt_person_fk foreign key (person_id) 
    references person(person_id),
    constraint pt_teacher_fk foreign key (teacher_id) 
    references teacher(teacher_id)
);
create table teacher_course (
    teacher_id int not null,
    course_id int not null,
    constraint tc_pk primary key (course_id),
    constraint tc_teacher_fk foreign key (teacher_id) 
    references teacher(teacher_id),
    constraint tc_course_fk foreign key (course_id) 
    references course(course_id)
);
create table mark (
    score int not null,
    semester int not null,
    course_id int not null,
    constraint mark_pk primary key (course_id, score),
    constraint mark_course_fk foreign key (course_id) 
    references course(course_id)
);
create table student_mark (
    student_id int not null,
    course_id int not null,
    score int not null, 
    constraint sm_pk primary key (student_id),
    constraint sm_student_fk foreign key (student_id) 
    references student(student_id),
    constraint sm_mark_fk foreign key (course_id, score) 
    references mark(course_id, score)
);