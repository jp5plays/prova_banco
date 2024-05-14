create database aavaliacao_22c;
use aavaliacao_22c;


insert into Livros (titulo,autor,ano_publicacao,disponivel,categoria,isbn,editora,quantidade_paginas,idioma) values
("As Crônicas de Nárnia","C.S. Lewis",1950,true,"Fantasia","978-0064471190","HaperCollins",96,"Francês");

update Livros 
set disponivel = false
where ano_publicacao<1900;

update Livros 
set editora  = "Plume Books"
where titulo= "1984";

delete from Livros where idioma= "Francês" and ano_publicacao<2000;

select *
from livros
where quantidade_paginas>600;

select categoria,count(categoria) as contagem
from Livros
group by categoria;

select titulo
from livros
order by titulo desc
limit 5;

select avg(quantidade_paginas) as media_de_pags
from livros
where disponivel = true;

select *
from livros
order by ano_publicacao desc;

select * 
from livros
where titulo like "S%" and ano_publicacao between 1970 and 1990;



