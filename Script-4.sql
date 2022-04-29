
select * from roles_2;

create table City (
id serial primary key,
city_name varchar(40) unique not null
)

create table Person (
id serial primary key,
person_name varchar(40),
city_id int not null
)

insert into City(city_name)
values ('Kiyv'),
       ('Minsk'),
       ('Moskva'),
       ('Berlin');
      
 insert into Person(person_name, city_id)
 values ('Vadim', 2),
        ('Stanislav', 1),
        ('Anastasiya', 3),
        ('Tatiana', 5),
        ('Maxim', 5),
        ('Natalya', 6);

select * from City

select * from Person

select person_name, city_name from City full join person 
on Person.city_id=City.id
