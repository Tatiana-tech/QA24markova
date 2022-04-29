create table salary_2 (
   id serial primary key,
   monthly_salary int not null
)
 
create table roles_2 (
   id serial primary key,
   role_title varchar(30) unique not null
)
 
create table salary_2_roles_2 (
   id serial primary key,
   id_role int not null,
   id_salary int not null,
   foreign key (id_role)
       references roles_2 (id),
   foreign key (id_salary)
       references salary_2 (id)
)

insert into salary_2(monthly_salary)
values (1250),
       (1350),
       (1300),
       (1400),
       (1500);
      
select * from salary_2;

insert into roles_2(role_title)
values ('QA_junior'),
       ('QA_Middle'),
       ('QA_Senior'),
       ('QA_Menejer'),
       ('Avtometion');
      
select * from roles_2;

insert into salary_2_roles_2(id_role, id_salary)
values (1, 5),
       (2, 2),
       (3, 3),
       (4, 1),
       (5, 4);
      
select * from salary_2_roles_2;

делаем поправку( update):
select * from roles_2;

update roles_2 
set role_title = 'QA_Junior'
where id=1;
проверяем:

select * from roles_2;

по порядку id

select * from roles_2 
order by (id);





