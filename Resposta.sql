SELECT Nome, Ano
FROM Filmes

SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao DESC

SELECT Ano, COUNT(*) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Duracao DESC

SELECT * 
FROM Atores 
WHERE Genero = 'M'

SELECT * 
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

SELECT Nome, Genero
FROM Filmes filmes
INNER JOIN FilmesGenero filmesGenero ON filmes.Id = filmesGenero.IdFilme
INNER JOIN Genero genero ON filmesGenero.IdGenero = genero.Id

SELECT Nome, Genero
FROM Filmes filmes
INNER JOIN FilmesGenero filmesGenero ON filmes.Id = filmesGenero.IdFilme
INNER JOIN Genero genero ON filmesGenero.IdGenero = genero.Id
WHERE genero.Genero = 'Mistério'

SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes filmes
INNER JOIN ElencoFilme elencoFilmes ON filmes.Id = elencoFilmes.IdFilme
INNER JOIN Autores autores ON autores.Id = elencoFilmes.IdAutor
