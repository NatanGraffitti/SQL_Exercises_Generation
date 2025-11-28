CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    matricula CHAR(10) NOT NULL UNIQUE,
    nota DECIMAL(3, 1) NOT NULL,
    turma VARCHAR(50),
    ativo BOOLEAN DEFAULT TRUE
);

INSERT INTO tb_estudantes (nome, matricula, nota, turma, ativo) VALUES
('Ana Clara Leal Marques', '20230001', 8.5, '3º Ano A', TRUE),
('Pedro Souza', '20230002', 6.9, '3º Ano A', TRUE),
('Arthur Pilla', '20230003', 9.2, '2º Ano B', TRUE),
('Ana Clara Santos', '20230004', 5.5, '1º Ano C', TRUE),
('Helio Francisco', '20230005', 7.0, '3º Ano A', TRUE),
('Carla Mendes', '20230006', 4.8, '2º Ano B', FALSE), 
('Natan Graffitti', '20230007', 8.1, '1º Ano C', TRUE),
('Rael Gomes', '20230008', 7.5, '3º Ano A', TRUE),
('Fernanda Alves', '20230009', 6.0, '2º Ano B', TRUE),
('Silvane Zatta', '20230010', 9.8, '1º Ano C', TRUE); 

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes
SET 
    nota = 7.1, 
    turma = '1º Ano C'
WHERE id = 2;

SELECT * FROM tb_estudantes WHERE id = 2;