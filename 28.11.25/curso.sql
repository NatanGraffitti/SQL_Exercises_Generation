CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    duracao_horas INT,
    preco DECIMAL(8, 2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES ('Tecnologia','Cursos voltados para TI e inovação'),
       ('Artes Visuais','Cursos de desenho, ilustração e design'),
       ('Comunicação','Cursos de mídias digitais e estratégia'),
       ('Linguagens','Cursos de idiomas e comunicação internacional'),
       ('Negócios','Cursos de gestão, liderança e administração');

INSERT INTO tb_cursos (nome,descricao,duracao_horas,preco,categoria_id)
VALUES ('Desenvolvedor Full Stack','Formação completa em desenvolvimento web',80,750.00,1),
       ('Python Analítico','Python aplicado a análise de dados',60,650.00,1),
       ('Design de Interfaces','Criação de telas e experiência visual',40,450.00,2),
       ('Estratégias Digitais','Gestão de presença online e campanhas',50,550.00,3),
       ('Espanhol Intensivo','Curso rápido para conversação',100,1200.00,4),
       ('Administração Moderna','Gestão com metodologias ágeis',45,600.00,5),
       ('Front-end Profissional','HTML, CSS, JavaScript e frameworks',70,800.00,1),
       ('Edição Profissional','Tratamento e manipulação de imagem',30,400.00,2);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Tecnologia';
