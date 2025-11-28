CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produto (
    id INT(10) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100),
    preco DECIMAL(7,2),
    estoque INT NOT NULL,
    data_cadastro DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produto (nome, categoria, preco, estoque, data_cadastro)
VALUES
    ('Teclado', 'Acessórios', 150.00, 50, '2024-03-01'),
    ('Smartphone', 'Eletrônicos', 2500.00, 30, '2024-01-20'),
    ('Monitor 27 Polegadas"', 'Informática', 789.00, 25, '2024-02-18'),
    ('Cadeira Gamer', 'Mobília', 2000.00, 10, '2024-03-03'),
    ('Headset', 'Acessórios', 300.00, 40, '2024-02-25'),
    ('Webcam', 'Acessórios', 110.00, 60, '2024-03-05'),
    ('Mouse Sem Fio', 'Acessórios', 120.00, 80, '2024-02-15'),
    ('Notebook Lenovo Thinkpad', 'Eletrônicos', 6000.00, 12, '2024-02-10');

SELECT * FROM tb_produto
WHERE preco > 500.00;

SELECT * FROM tb_produto
WHERE preco < 500.00;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produto
SET preco = preco + 100
WHERE nome = 'Headset Pro';

SELECT * FROM tb_produto
ORDER BY preco ASC;