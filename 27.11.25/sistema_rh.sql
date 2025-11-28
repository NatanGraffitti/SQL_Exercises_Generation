CREATE DATABASE db_sistema;

USE db_sistema;

CREATE TABLE tb_departamentos(
departamento_id BIGINT,
nome_departamento VARCHAR(255) NOT NULL,
PRIMARY KEY(departamento_id)
);

INSERT INTO tb_departamentos(departamento_id,nome_departamento) VALUES
(1,"TI"),
(2,"Marketing"),
(3,"Financ/Contabil");

SELECT * FROM tb_departamentos;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255),
departamento_id BIGINT,
data_nascimento DATE,
data_contratado DATE,
salario DECIMAL(6,2),
PRIMARY KEY (id),
FOREIGN KEY (departamento_id) REFERENCES tb_departamentos(departamento_id)
);

INSERT INTO tb_colaboradores(nome,cargo,departamento_id,data_nascimento,data_contratado,salario) VALUES
("Ana Clara Leal Marques","Desenvolvedor", 1, '1999-09-12','2019-09-12',5000.00),
("Arthur Pilla", "Designer Gráfico(a)", 2, '1999-09-30', '2020-12-01', 7000.00);
("Helio Francisco", "Analista de Marketing Digital", 2, '1969-11-25','2015-05-20',  2000.50),
("Silvane Zatta", "Contador(a)", 3, '1957-01-04', '2022-01-10', 4200.00),
("Natan Graffitti", "Estagiário de TI", 1, '1998-07-27', '2025-04-01', 1900.00),


SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1800.50 WHERE id = 2;

SELECT * FROM tb_colaboradores;