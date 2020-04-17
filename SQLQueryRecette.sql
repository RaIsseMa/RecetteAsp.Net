create database recettesdb
go
use recettesdb
go
create table theme (codeTheme int primary key,nomTheme nvarchar(20),[description] nvarchar(100))
go
create table recette(numRec int identity(1,1) primary key,nomRec nvarchar(20) unique not null,dateCreationRec date,difficulte nvarchar(20) check (difficulte = 'Difficile' or difficulte='moyen' or difficulte = 'facile'),tempsPreparation int,MethodePreparation nvarchar(200),photo nvarchar(200),codeTheme int foreign key references theme)
go
create table ingredient (numIng int identity(1,1) primary key,nomIng nvarchar(20) unique not null,puIng money,uniteMesuring nvarchar(20))
go
create table ingredients_recette( numRec int foreign key references recette,numIng int foreign key references ingredient on delete cascade,qteUtilise int)

go
create function recIng (@numRec int)
returns table
as
return(
select qteUtilise,uniteMesuring,nomIng
from ingredients_recette
join ingredient
on ingredients_recette.numIng = ingredient.numIng
where numRec = @numRec
)

go
create view sells 
as 
select numRec,qteUtilise,puIng
from ingredients_recette
join ingredient
on ingredients_recette.numIng = ingredient.numIng