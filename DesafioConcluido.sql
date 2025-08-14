--1 - Buscar o nome e ano dos filmes
select NOME, ANO from filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano, duracao from filmes order by ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select nome, ano, duracao from filmes where nome='De Volta para o Futuro' ;

--4 - Buscar os filmes lan�ados em 1997
select nome, ano, duracao from filmes where ano=1997 ;

--5 - Buscar os filmes lan�ados AP�S o ano 2000
select nome, ano, duracao from filmes where ano>2000 ;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, ano, duracao from filmes where duracao>100 and duracao < 150 order by duracao;

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano,count(*) quantidade from filmes group by ano order by quantidade desc;

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select * from atores where genero='M';

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * from atores where genero='F' order by PrimeiroNome;

--10 - Buscar o nome do filme e o g�nero
select f.nome,g.genero from filmes f, generos g, filmesgenero a where f.id=a.idfilme and a.idgenero=g.id;

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select f.nome,g.genero from filmes f, generos g, filmesgenero a where f.id=a.idfilme and a.idgenero=g.id and genero='Mist�rio';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.nome, a.PrimeiroNome,a.UltimoNome,e.Papel from filmes f, atores a, ElencoFilme e where f.id=e.IdFilme and e.IdAtor=a.Id;
