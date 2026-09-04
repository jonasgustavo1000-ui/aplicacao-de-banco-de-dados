-- Criando database
CREATE DATABASE DB_T04703_JONAS_MOREIRA;

-- usando database
USE DB_T04703_JONAS_MOREIRA;

-- criando tabela
CREATE TABLE TB_LIVROS (

	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo_livro VARCHAR(150),
    autor VARCHAR (120),
    ano_publicacao INT,
    genero VARCHAR (50)
    
);

/*Comentarios de mais de uma linha*/
-- Inserindo registros na tabela
INSERT INTO TB_LIVROS(titulo_livro, autor, ano_publicacao, genero)
 VALUES('Dom Casmurro', 'Machado de Assis', 1899, 'Romance');
 
 -- Inserindo multiplos registros com apenas 1 "values"
INSERT INTO TB_LIVROS (titulo_livro, autor, ano_publicacao, genero)
VALUES('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, 'Realismo Mágico'),
	  ('O Pequeno Principe', 'Antonie de Saint-Exupery', 1943, 'Fabula/Literatura Infantil'),
      ('O Hobit', 'J.R.R. Tolkien', 1937, 'Fantasia');

-- Consultando os registros da tabela livros
SELECT * FROM TB_LIVROS;

-- Ordenando as informações do resultado de uma consulta
-- Por ordem alfabetica ascendente - ASC
-- Por ordem alfabetica descendente - DESC
SELECT * FROM TB_LIVROS
ORDER BY autor DESC;

-- LIMIT
SELECT * FROM TB_LIVROS
LIMIT 2;

-- LIKE
-- COMEÇA COM A LETRA R
SELECT * FROM TB_LIVROS
WHERE genero LIKE 'R%';

-- TERMINA COM A LETRA O
SELECT * FROM TB_LIVROS
WHERE genero LIKE '%O';

-- QUALQUER POSIÇÂO
-- DEVE CONTER A LETRA R
SELECT * FROM TB_LIVROS
WHERE genero LIKE '%R%';