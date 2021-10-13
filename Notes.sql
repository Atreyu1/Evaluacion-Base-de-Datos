DROP DATABASE IF EXISTS notes_db;
CREATE DATABASE notes_db;
USE notes_db;
CREATE TABLE `users`(  
    id int NOT NULL primary key AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
) default charset utf8;

--Lista de Usuarios

insert into users(id,username,email) values('1','Aquiles Vaesa','aqui.les.va.esa@gmail.com');
insert into users(id,username,email) values('2','Pepe Naba','pepenaba@gmail.com');
insert into users(id,username,email) values('3','Moze Brios','moze_brios@gmail.com');
insert into users(id,username,email) values('4','All Colico','all_colico@gmail.com');
insert into users(id,username,email) values('5','Rolando Mota','rolando_mota@gmail.com');
insert into users(id,username,email) values('6','Elpa Panatas','elpa_panatas@gmail.com');
insert into users(id,username,email) values('7','Micalzon Cillo','micalzon_cillo@gmail.com');
insert into users(id,username,email) values('8','Alcor Noque','alcor_noque@gmail.com');
insert into users(id,username,email) values('9','Aquiles Vailoyo','aquiles_vailoyo@gmail.com');
insert into users(id,username,email) values('10','Trago Cammote','trago_cammote@gmail.com');
insert into users(id,username,email) values('11','Barry Gota','barry_gota@gmail.com');

CREATE TABLE `notes`(  
    id int NOT NULL primary key AUTO_INCREMENT,
    creation_date DATE,
    modification_date DATE,
    note_description TEXT NOT NULL,
    deletable TINYINT,
    title VARCHAR(100),
    user_id int NOT NULL,
    KEY `note_user_id_foreign` (`user_id`),
    CONSTRAINT `note_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) default charset utf8;

CREATE TABLE `categories`(  
    id int NOT NULL primary key AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
) default charset utf8;

--Diferentes categorias de humor:

insert into categories(id,category_name) values('2','Humor Negro');
insert into categories(id,category_name) values('3','Humor Ácido');
insert into categories(id,category_name) values('4','Humor Basura');
insert into categories(id,category_name) values('5','Humor Blanco');
insert into categories(id,category_name) values('6','Humor Racista');
insert into categories(id,category_name) values('7','Humor Homofóbico');
insert into categories(id,category_name) values('8','Humor de Simpsons');
insert into categories(id,category_name) values('9','Humor Verde');
insert into categories(id,category_name) values('10','Humor Inexistente');

CREATE TABLE `category_notes`(  
    id int NOT NULL primary key AUTO_INCREMENT,
    note_id int NOT NULL,
    category_id int NOT NULL,
    KEY `category_notes_note_id_foreign` (`note_id`),
    KEY `category_notes_category_id_foreign` (`category_id`),
    CONSTRAINT `category_notes_note_id_foreign` FOREIGN KEY (`note_id`) REFERENCES `notes` (`id`),
    CONSTRAINT `category_notes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES categories (id)
) default charset utf8;

