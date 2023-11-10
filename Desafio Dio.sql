--1
SELECT
	Nome,
	Ano
FROM Filmes

-- 2

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- 3

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome ='De Volta para o Futuro'

-- 4

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7

SELECT
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8

SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9

SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10

SELECT Nome, Genero
FROM FilmesGenero 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id

-- 11

SELECT Nome, Genero
FROM FilmesGenero 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
WHERE Genero = 'Mistério'

-- 12

SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM ElencoFilme 
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id