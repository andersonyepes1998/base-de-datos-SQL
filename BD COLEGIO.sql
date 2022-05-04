use Colegio
create proc agregar_alumno
@Id_Alumno nvarchar(10),
@Nom_Alumno nvarchar(50),
@Dir_Alumno nvarchar(50),
@Tel_Alumno bigint,
@Grp_Alumno nvarchar(1)
as
insert into Alumno(Id_Alumno,Nom_Alumno,Dir_Alumno,Tel_Alumno,Grp_Alumno)
values (@Id_Alumno,@Nom_Alumno,@Dir_Alumno,@Tel_Alumno,@Grp_Alumno)


create proc agregar_Curso
@Id_Curso nvarchar(10),
@Nom_Curso nvarchar(50)
as
insert into Curso(Id_Curso,Nom_Curso)
values (@Id_Curso,@Nom_Curso)


create proc agregar_Docente
@ID_Docente nvarchar(10),
@Nom_Docente nvarchar(50),
@Dire_Docente nvarchar(50),
@Tel_Docente bigint
as
insert into Docente(ID_Docente,Nom_Docente,Dire_Docente,Tel_Docente)
values (@ID_Docente,@Nom_Docente,@Dire_Docente,@Tel_Docente)







use Colegio

create procedure modificar_Docente
@ID_Docente nvarchar(10),
@Nom_Docente nvarchar(50),
@Dire_Docente nvarchar(50),
@Tel_Docente bigint
as
update Docente set Nom_Docente=@Nom_Docente, Dire_Docente=@Dire_Docente, Tel_Docente=@Tel_Docente
where  ID_Docente=@ID_Docente

select * from Docente

create procedure modificar_Curso
@Id_Curso nvarchar(10),
@Nom_Curso nvarchar(50)
as
update Curso set Nom_Curso=@Nom_Curso where Id_Curso=@Id_Curso

select * from Curso

create procedure modificar_alumno
@Id_Alumno nvarchar(10),
@Nom_Alumno nvarchar(50),
@Dir_Alumno nvarchar(50),
@Tel_Alumno bigint,
@Grp_Alumno nvarchar(1)
as
update Alumno set Nom_Alumno=@Nom_Alumno, Dir_Alumno=@Dir_Alumno, Tel_Alumno=@Tel_Alumno, Grp_Alumno=@Grp_Alumno
where Id_Alumno=@Id_Alumno 

select *from Alumno



use Colegio

create proc consultar_alumno
@Id_Alumno nvarchar(10)
as
select * from Alumno where Id_Alumno=@Id_Alumno

select * from Alumno

create proc consultar_Curso
@Id_Curso nvarchar(10)
as
select * from Curso where Id_Curso=@Id_Curso

select * from Curso


create proc consultar_Docente
@ID_Docente nvarchar(10)
as
select * from Docente where ID_Docente=@ID_Docente

select * from Docente


use Colegio

create proc borrar_docente
@ID_Docente nvarchar(10)
as
delete from Docente where ID_Docente=@ID_Docente

select * from Docente


create proc borrar_curso
@Id_Curso nvarchar(10)
as
delete from Curso where Id_Curso=@Id_Curso

select * from Curso
