//ASSIGNMENT 2

/*Select values such that the students have failed including students whose mark field is NULL*/

select *, case
when score < 50 or score is null then 'Failed'
else 'passed'
END AS Failed from marks

/*Select fields with the value NULL*/

select * from marks where score is null

/*What happens during a varchar out of bounds situation?*/
insert into marks(sname) values ('deviassedrfghjkldfghyjuki')


/*Store name in Malayalam inside the database*/

alter table marks add malayalam nvarchar(max)
update marks set malayalam =N'ഐഷ റഹീം' where id=1
update marks set malayalam =N'അബി' where id=2
update marks set malayalam =N'വിനയ്' where id=3
update marks set malayalam =N'ദേവി' where id=4

/*How to insert a 10000 sized string?*/

alter table marks add maxm varchar(max)
update marks set maxm ='qwertyuiopwertyusdftgyhujimk' where id=1
update marks set maxm ='asdfghjsdfghjfghswexdrcftvgj' where id=2
update marks set maxm ='erdftgyhujdrftgyhujdrftgyhuj' where id=3
update marks set maxm ='erftgyhjdsdfghjkldfrgthyjuki' where id=4

select * from marks