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

-- Lista de Notas

insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2018-10-16','2021-10-13','En la primera página del libro hay un mensaje: "Para descubrir el sentido de la vida, pasa a la página 144". En esta página, el lector es dirigido a otra, y así sucesivamente. Finalmente, se regresa a la página número uno. Esto es una broma explicando que no existe un sentido de la vida, del sentido de "cómo mantener a un idiota ocupado". En la primera página del libro también se encuentra la introducción, en donde Bart saluda y explica sobre el "provechoso viaje hacia la sabiduría" que tendrá el lector. Al final de la página hay una nota amenazando a cualquiera que haya robado el libro. A lo largo del mismo, se incluyen varias aclaraciones a pie de página. En la página siguiente hay un aviso diciendo',null,'El Barto','1');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2018-10-16','2021-10-13','Los Simpson se han venido emitiendo tantísimos años (desde el 17 diciembre de 1989), que es ya la serie norteamericana más años lleva en televisión, y parece que va a seguir ostentando dicho récord, pues ya tiene programada su vigésimo-octava temporada para 2016-2017. No es extraño, pues, que cuente con numerosos estudios basados en ella, llevados a cabo tanto por profesores y especialistas en estudios culturales, como por fans de la serie que la conocen como la palma de su mano. A lo largo de los años que llevo trabajando sobre estos habitantes de Springfield, he tenido en mis manos, pues, libros tanto meramente descriptivos de la serie, como otros que ahondaban en ella para relacionarla con la psicología, la religión, la ciencia, la enseñanza en las aulas, la filosofía, e incluso las matemáticas, entre otros.',null,'Bart sape','2');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2013-09-15','2021-10-13','La serie, pues, da mucho juego. Tanto, que para quien se plantee empezar a investigarla en profundidad, lo normal es que se vea abrumado por la enorme cantidad de episodios para analizar (episodios, además, súper-cargados de elementos analizables), por la calidad de los contenidos en muy diversos aspectos, y por el gran número de publicaciones y obras de referencia existentes tanto en el ámbito académico como en las redes sociales. Pues es pensando en ellos, precisamente, por lo que he decidido dedicar esta reseña a The World according to The Simpsons. No puedo negar que también me mueven motivos personales a hacerlo: fue el primer libro que leí sobre Los Simpson.',null,'Los Simpson han hablado','3');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2013-04-22','2021-10-13','Aún puedo recordarme a mí misma pasando vergüenza al levantar la vista y ver las caras de asombro de mis compañeros de viaje en el autobús de línea que me llevaba a la Facultad por las carcajadas que se me escapaban a veces mientras lo leía. No es un libro de humor, no. Pero, en contraste con los libros académicos que solía leer sobre otras materias, éste me resultó muy divertido (los otros no eran menos interesantes, pero no me hacían sonreír… tanto). ',null,'A la grande le puse Cuca','4');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2016-09-19','2021-10-13','Y esa risa era fruto también de la ilusión que me infundía al ver lo que me divertía este nuevo tipo de investigación en el que me estaba iniciando. El subtítulo ya prometía («What Our Favorite TV Family Says About Life, Love and the Pursuit of the Perfect Donut»), pero a su vez reflejaba la idiosincrasia propia de la serie: una ironía y un humor con sentido y con mensaje.',null,'Usted está mal, todo el maldito sistema está mal!','5');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2015-09-18','2021-10-13','Y es que la serie se hace eco de su entorno tanto cercano como lejano (recordemos, por ejemplo los episodios dedicados a distintos países del mundo); y a su vez influye en la sociedad con sus críticas (a veces sutiles y otras mordaces) dirigidas en todos los sentidos y hacia todos y todo (Keslowitz señala esta característica como lo que hace que la serie perdure en el tiempo).',null,'Los Magios','6');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2011-06-06','2021-10-13','A la serie no le faltan temas, ya que, a lo largo de los muchos años que lleva emitiéndose, ha ido reflejando y haciendo reflexionar sobre los hechos que iban y van teniendo lugar en nuestra sociedad, como destaca el propio título de la sección 1, «The Simpsons and Society». A ellos, aunque a grandes rasgos, se dedica la tercera parte del libro, titulada, precisamente, «The Simpsons and Contemporary Life», donde podemos encontrar análisis sobre temáticas tan diverss e importantes como la política (capítulo 9), la globalización (capítulo 10), la enorme influencia de la televisión en los espectadores (capítulo 11), la excepcionalidad estadounidense (capítulo 12), el mundo laboral (capítulo 13), la importancia que da nuestra sociedad a los personajes famosos (capítulo 14), la legislación sobre el control del uso de armas (capítulo 15), la religión bien entendida como medio para favorecer la convivencia social (capítulo 16), o el sistema educativo (capítulo 17).',null,'Los Borbotones','7');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2012-08-18','2021-10-13','Siguiendo en orden descendente, la segunda parte del libro se dedica al estudio de cada uno de los personajes que la pueblan, empezando por los más destacados y acabando con los secundarios. De nuevo, para quien se inicie en el análisis de la serie, esta parte del libro resulta muy útil, dado que ofrece los datos más relevantes sobre los protagonistas, que no se deben olvidar para partir de una sólida base. Esta sección concluye, además, con unas reflexiones sobre la imagen de la familia en Los Simpson contrastándola con la ofrecida en otras famosas series como The Cosby Show.',null,'Lisa y los Deportes','8');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2004-07-10','2021-10-13','También las considero muy necesarias, dada la importancia que tradicionalmente ha otorgado la sociedad norteamericana a la familia, aunque reconozco que el análisis que ofrece este libro al respecto es muy somero.',null,'Ponlos en tu gorra','9');
insert into notes(id,creation_date,modification_date,note_description,deletable,title,user_id) values('2','2016-02-08','2021-10-13','Y livianos resultan también -lo reconozco- muchos de los capítulos y contenido del libro. Pero, teniendo en cuenta que sobre Los Simpsons se podría escribir toda una enciclopedia (y no exagero), y que el libro puede ser considerado como una primera aproximación para abrirnos los ojos ante la riqueza de la serie en muchos sentidos, creo que no me equivoco si lo aconsejo a los investigadores principiantes de la serie y a los aficionados.',null,'Yo lloré y Magie rió','10');

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

