CREATE TABLE usuario (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE permissao (
	id INT AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario_permissao (
	id_usuario INT NOT NULL,
	id_permissao INT NOT NULL,
	PRIMARY KEY (id_usuario, id_permissao),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id),
	FOREIGN KEY (id_permissao) REFERENCES permissao(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- {bcrypt} identifica o tipo do hash gerado
INSERT INTO usuario (id, nome, email, senha) values (1, 'Administrador', 'angelogl@gmail.com', '{bcrypt}$2a$10$8Pc1KGsm3tR1x9vHpolQLuk8iGaNUzvNoubnt1mA7x4OPabXipaOW');
INSERT INTO usuario (id, nome, email, senha) values (2, 'Aluno da Silva Sauro Fonseca', 'aluno@gmail.com', '{bcrypt}$2a$10$tFgKQypde72jfwFVVLTXBelzFkZTkdK2B2elZDebW2KmRtYDXf21i');

INSERT INTO permissao (id,descricao) values (1,'ROLE_CADASTRAR_AULA');
INSERT INTO permissao (id,descricao) values (2,'ROLE_PESQUISAR_AULA');

INSERT INTO permissao (id,descricao) values (3,'ROLE_CADASTRAR_CONTEUDO');
INSERT INTO permissao (id,descricao) values (4,'ROLE_REMOVER_CONTEUDO');
INSERT INTO permissao (id,descricao) values (5,'ROLE_PESQUISAR_CONTEUDO');

INSERT INTO permissao (id,descricao) values (6,'ROLE_CADASTRAR_CURSO');
INSERT INTO permissao (id,descricao) values (7,'ROLE_REMOVER_CURSO');
INSERT INTO permissao (id,descricao) values (8,'ROLE_PESQUISAR_CURSO');

INSERT INTO permissao (id,descricao) values (9,'ROLE_CADASTRAR_UNIDADE');
INSERT INTO permissao (id,descricao) values (10,'ROLE_REMOVER_UNIDADE');
INSERT INTO permissao (id,descricao) values (11,'ROLE_PESQUISAR_UNIDADE');

INSERT INTO permissao (id,descricao) values (12,'ROLE_CADASTRAR_USUARIO');
INSERT INTO permissao (id,descricao) values (13,'ROLE_REMOVER_USUARIO');
INSERT INTO permissao (id,descricao) values (14,'ROLE_PESQUISAR_USUARIO');

INSERT INTO permissao (id,descricao) values (15,'ROLE_PESQUISAR');
INSERT INTO permissao (id,descricao) values (16,'ROLE_CADASTRAR');
INSERT INTO permissao (id,descricao) values (17,'ROLE_REMOVER');

-- angelogl@gmail.com
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 1);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 2);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 3);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 4);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 5);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 6);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 7);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 8);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 9);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 10);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 11);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 12);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 13);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 14);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 15);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 16);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 17);

-- aluno@gmail.com
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 2);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 5);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 8);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 11);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 14);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 15);