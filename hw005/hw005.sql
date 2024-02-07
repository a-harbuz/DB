//DB-socialmedia
//https://dbdiagram.io/d/socialmedia-65c0e0dcac844320ae793d1a

use webshop;
CREATE TABLE clients (
	id int primary key auto_increment,
    date timestamp,
    nikname varchar(100),
    firstname varchar(100),
    lastname varchar(100),
    status int
)

INSERT INTO clients (nikname, firstname, lastname, status)
VALUES
  ('artur', 'Артур' , 'Абакулов', 1),
  ('vadim.k', 'Вадим' , 'Калякин', 1),
  ('boris-k', 'Борис' , 'Карпиков', 1)
