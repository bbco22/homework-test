create database homework1;

use homework1;

create table users (
    id int primary key auto_increment,
    name varchar(255) not null,
    age tinyint unsigned,
    gender varchar(255) not null,
    nationality varchar(255) not null
);

create table post (
    id int primary key auto_increment,
    title varchar(255) not null,
    description varchar(255) not null,
    user_id int,
    foreign key (user_id) references users (id)
);

create table likes (
    id int primary key auto_increment,
    user_id int,
    post_id int,
    foreign key (user_id) references users (id),
    foreign key (post_id) references post (id)
);

create table comments (
    id int primary key auto_increment,
    text_ text,
    user_id int,
    post_id int,
    foreign key (user_id) references users (id),
    foreign key (post_id) references post (id)
);

insert users (name, age, gender, nationality) values ('name11', 23, 'W', 'USA');
insert users (name, age, gender, nationality) values 
('name12', 25, 'W', 'BLR'),
('name13', 30, 'M', 'DE'),
('name15', 40, 'M', 'FR'),
('name20', 35, 'W', 'UK');

select * from users;
insert post (title, description, user_id) values 
('Mrs.', 'description-1', 2),
('Mrs.', 'description-5', 4),
('Mr.', 'description-23', 1),
('Mr.', 'description-dfg', 3),
('Mrs.', 'description-;knkls', 5);

select * from post;

insert likes (user_id, post_id) values (2, 4), (1, 5);
select * from likes;

insert comments (text_, user_id, post_id) values ( 'nsjdhfkslsl', 2, 1), ('lskddnmalskdj', 4, 5);
select * from likes;

select * from comments where user_id= 2;






