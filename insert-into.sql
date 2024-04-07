create table if not exists cadastro.cliente (
	id_cliente int not null,
    nome_cliente varchar(30) not null,
    idade_cliente int not null,
    email varchar(30) not null,
    peso decimal(3,2) not null,
    altura decimal(5,2) not null,
    sexo varchar(1) comment "F - Feminino / M - Masculino",
    nacionalidade varchar(20) default 'Brasil',
    id_outros int,
    constraint pk_id_cliente primary key (id_cliente),
    constraint fk_cliente_2_outros foreign key (id_outros) references cadastro.outros (id_outros)
);

INSERT INTO cadastro.cliente (nome_cliente, idade_cliente, email) VALUES
('João', 25, 'joao@example.com'),
('Maria', 30, 'maria@example.com'),
('Pedro', 28, 'pedro@example.com'),
('Ana', 35, 'ana@example.com'),
('Carlos', 32, 'carlos@example.com'),
('Lúcia', 27, 'lucia@example.com'),
('Fernando', 29, 'fernando@example.com'),
('Laura', 26, 'laura@example.com'),
('Rafael', 31, 'rafael@example.com'),
('Isabela', 33, 'isabela@example.com'),
('Gustavo', 28, 'gustavo@example.com'),
('Mariana', 29, 'mariana@example.com'),
('André', 34, 'andre@example.com'),
('Camila', 27, 'camila@example.com'),
('Ricardo', 30, 'ricardo@example.com'),
('Carolina', 25, 'carolina@example.com'),
('Hugo', 32, 'hugo@example.com'),
('Juliana', 31, 'juliana@example.com'),
('Daniel', 26, 'daniel@example.com'),
('Amanda', 28, 'amanda@example.com'),
('Antônio', 29, 'antonio@example.com'),
('Luiza', 33, 'luiza@example.com'),
('Bruno', 27, 'bruno@example.com'),
('Patrícia', 30, 'patricia@example.com'),
('Eduardo', 24, 'eduardo@example.com'),
('Letícia', 32, 'leticia@example.com'),
('Roberto', 31, 'roberto@example.com'),
('Mariano', 26, 'mariano@example.com'),
('Sandra', 29, 'sandra@example.com'),
('Diego', 35, 'diego@example.com');



desc cadastro.cliente;
select * from cadastro.cliente;
drop table if exists cadastro.cliente;