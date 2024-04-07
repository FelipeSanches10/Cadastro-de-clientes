create table if not exists cadastro.outros (
	id_outros int not null,
    nome varchar(30),
    idade int,
    nacionalidade varchar(20) default 'Brasil',
    sexo varchar(1) not null comment "F - Feminino / M - Masculino",
    constraint pk_id_outros primary key (id_outros)
);
