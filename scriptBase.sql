create database lab2;
use lab2;

create table video(
idvideo int primary key,
titulo varchar (50),
reproduccion int,
url varchar(200)
);

--CREACION DE STORES PROCEDURES

--INSERTAR
create procedure sp_video_insertar
@idvideo int,
@titulo varchar (50),
@reproduccion int,
@url varchar(200)
as
begin
	insert into video values (@idvideo, @titulo, @reproduccion, @url);
end;

exec sp_video_insertar 1, 'prueba de video', 1, 'youtube.com';
