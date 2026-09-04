CREATE TABLE TB_PRODUTOS_P (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(150),
    preco DECIMAL(8,2)
);

CREATE TABLE TB_VENDAS_P (
	id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES TB_PRODUTOS_P(id_produto),
    quantidade INT,
    data_venda DATE
);

CREATE TABLE TB_FORNECEDOR_P (
	id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES TB_PRODUTOS_P(id_produto),
    nome VARCHAR(100),
    telefone VARCHAR(20)
);

INSERT INTO TB_PRODUTOS_P(nome_produto,preco)
VALUES ('Bolo de Fubá', 20.00),
	   ('Bolo de Chocolate', 30.00),
	   ('Pão Frances', 1.00);

INSERT INTO TB_VENDAS_P(id_produto,quantidade,data_venda)
VALUES (1, 20, '2026-06-03'),
	   (2, 10, '2026-04-09'),
	   (3, 120, '2026-05-10');
       
INSERT INTO TB_FORNECEDOR_P(id_produto,nome,telefone)
VALUES (1, 'Casa de Bolos', '11 91234-5678'),
	   (2, 'Bolos da Cecília', '11 91222-5677'),
	   (3, 'Wickbold', '11 91134-5578');
       
SELECT * FROM TB_PRODUTOS_P;
SELECT * FROM TB_VENDAS_P;
SELECT * FROM TB_FORNECEDOR_P;
       
