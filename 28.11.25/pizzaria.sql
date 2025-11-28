CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(5,2) NOT NULL,
    ingredientes TEXT,
    tamanho VARCHAR(255),
    categoria_id BIGINT,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Clássica', 'Pizzas tradicionais com sabores salgados'),
('Sobremesa', 'Pizzas doces e sobremesas especiais'),
('Premium', 'Receitas gourmet e exclusivas da casa'),
('Natural', 'Pizzas vegetarianas com ingredientes frescos'),
('Bebidas', 'Refrigerantes, águas e sucos');

INSERT INTO tb_pizzas (nome, valor, ingredientes, tamanho, categoria_id) VALUES
('Napolitana', 48.50, 'Molho de tomate, mozzarella, manjericão', 'M-G', 1),
('Coca-Cola', 8.50, 'Refrigerante de cola', 'Lata', 5),
('Carne Seca Nordestina', 60.00, 'Carne seca, cebola, queijo coalho', 'M-G', 1),
('Frango Supreme', 52.50, 'Frango desfiado, catupiry, milho', 'M-G', 1),
('Verde Fit', 50.00, 'Tomate, espinafre, pimentão, mozzarella', 'M-G', 4),
('Calabresa Especial', 47.00, 'Calabresa, cebola caramelizada, queijo', 'M-G', 1),
('Chef Master', 85.00, 'Lombo suíno, bacon, queijo, molho especial', 'M-G', 3),
('Chocolate Dream', 65.00, 'Chocolate, doce de leite, marshmallow', 'P-M', 2),
('Queijos da Casa', 70.00, 'Mozzarella, gorgonzola, parmesão, gruyeré', 'Grande', 1);

SELECT * FROM tb_pizzas
WHERE valor > 45;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';

SELECT p.id, p.nome, p.valor, p.tamanho, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.valor, p.tamanho, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Sobremesa';
