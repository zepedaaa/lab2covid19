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

create procedure sp_video_delete
@idvideo int
as
begin
	delete from video WHERE @idvideo=idvideo;
end;

create procedure sp_video_update
@titulo varchar (50),
@reproduccion int,
@url varchar(200),
@idvideo int
as
begin
	update video set titulo=@titulo, reproduccion=@reproduccion, url=@url where @idvideo=@idvideo;
end;

exec sp_video_insertar 1, 'Charly Garcia- Demoliendo hoteles- Estudio 1984', 987549, 'https://www.youtube.com/embed/zE_AikzYw00';
insert into video values (2, 'Soda Stereo en Viña del Mar 1987', 1432987, 'https://www.youtube.com/embed/Y5O-nJOdKIQ');
insert into video values (3, 'Soda Stereo - Nada Personal (En Vivo)', 4958109,'https://www.youtube.com/embed/LB6_e2uA7rE');