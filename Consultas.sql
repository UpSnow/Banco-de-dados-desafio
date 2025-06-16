-- 1 - Buscar o nome e ano dos filmes
Select f.Nome,f.Ano from Filmes f

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select f.Nome,f.Ano from Filmes f
ORDER BY F.Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select f.Nome,f.Ano, f.Duracao from Filmes f 
where f.Nome = 'De Volta para o Futuro '

-- 4 - Buscar os filmes lançados em 1997
Select f.Nome,f.Ano, f.Duracao from Filmes f 
where f.Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
Select f.Nome,f.Ano, f.Duracao from Filmes f 
where f.Ano  > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select f.Nome,f.Ano, f.Duracao from Filmes f 
where f.Duracao > 100 and f.Duracao <150
ORDER BY f.Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select f.Ano, COUNT(*)'Qualidade' from Filmes f
GROUP BY f.Ano
ORDER BY Qualidade DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select a.PrimeiroNome, a.UltimoNome from Atores a
where a.Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select a.PrimeiroNome, a.UltimoNome from Atores a
where a.Genero = 'F'
ORDER by a.PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
Select f.Nome,g.Genero from Filmes f
join FilmesGenero fg on f.Id =fg.IdFilme
join Generos g on fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
Select f.Nome,g.Genero from Filmes f
join FilmesGenero fg on f.Id =fg.IdFilme
join Generos g on fg.IdGenero = g.Id
Where g.Genero ='Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select a.PrimeiroNome, a.UltimoNome, e.Papel from Atores a
join ElencoFilme e on a.Id =e.IdAtor
join Filmes f on e.IdFilme = f.Id

