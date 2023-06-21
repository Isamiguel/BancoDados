create database db_escola;
use db_escola;



create table estudantes (
id bigint auto_increment,
nomealuno varchar(100) not null,
nota decimal(6,1),
genero text,
classe varchar(255),
primary key(id)
);

insert into estudantes (
nomealuno, nota, genero, classe)
values("Heloisa",8,"feminino","a");
insert into estudantes (
 nomealuno, nota, genero, classe)
values("Ana Paula",7,"feminino","c");
insert into estudantes (
nomealuno, nota, genero, classe)
values("Pedro",4,"masculino","b");
insert into estudantes (
nomealuno, nota, genero, classe)
values("João",6,"masculino","d");
select*from estudantes;

select nome, nota, genero from tb_estudantes