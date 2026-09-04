CREATE TABLE TB_ALUNO(
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    curso VARCHAR(100)
);
CREATE TABLE TB_PROFESSOR(
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome_professor VARCHAR(100),
	curso VARCHAR(100)
);

CREATE TABLE TB_COMENTARIO(
	id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES TB_ALUNO(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES TB_PROFESSOR(id_professor),
    comentario TEXT,
    notadoprofessor DECIMAL(3,1)
);

INSERT INTO TB_ALUNO(nome,sobrenome,curso)
VALUES ('Jose','Mario','Marketing'),
	   ('Ana','Maria','Tecnologia da Informação'),
       ('Alberto','Colano','Power BI'),
       ('Bruno','Martins','Economia'),
       ('Alessandra','Rocha','Educação Fisica');

INSERT INTO TB_PROFESSOR(nome_professor,curso)
VALUES ('Marcos','Marketing'),
	   ('Pedro','Tecnologia da Informação'),
       ('Antonio','Power BI'),
       ('Enzo','Economia'),
       ('Carlos','Educação Fisica');
       
INSERT INTO TB_COMENTARIO(id_aluno,id_professor,comentario,notadoprofessor)
VALUES (1,1,'Aprendi muito com o professor! estou muito contente', 9.0),
       (2,2,'O professor não é muito legal, é bem rude', 4.0),
       (3,3,'Nada a declarar', 7.0),
       (4,4,'Não entendi a programação e não me foi explicado', 2.0),
       (5,5,'Cada aula é melhor que a outra!', 10.0);
       
       
SELECT * FROM TB_COMENTARIO;
