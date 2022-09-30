-- -----------------------------------------------------
-- Banco de Dados cravo_canela
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS cravo_canela DEFAULT CHARACTER SET utf8 ;
USE cravo_canela ;

-- -----------------------------------------------------
-- Tabela cravo_canela.perfil_cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cravo_canela.perfil_cliente (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(200) NOT NULL,
  email VARCHAR(50) NOT NULL,
  senha VARCHAR(50) NOT NULL,
  telefone VARCHAR(20) NULL DEFAULT NULL,
  nome_usuario VARCHAR(50) NOT NULL,
  cpf VARCHAR(15) NOT NULL,
  data_login DATE NOT NULL,
  status_conta VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX cpf_UNIQUE (cpf ASC) VISIBLE,
  UNIQUE INDEX email_UNIQUE (email ASC) VISIBLE,
  UNIQUE INDEX nome_usuario_UNIQUE (nome_usuario ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Tabela cravo_canela.video
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cravo_canela.video (
  id INT NOT NULL AUTO_INCREMENT,
  titulo TEXT NOT NULL,
  descricao TEXT NOT NULL,
  video TEXT NOT NULL,
  concluido TINYINT NOT NULL DEFAULT 0,
  total_acessos INT NULL DEFAULT NULL,
  nota_video VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Tabela cravo_canela.historico
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cravo_canela.historico (
  id INT NOT NULL AUTO_INCREMENT,
  data_visualizacao DATE NOT NULL,
  cliente_id INT NOT NULL,
  video_id INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_cliente_has_video_video1_idx (video_id ASC) VISIBLE,
  INDEX fk_cliente_has_video_cliente_idx (cliente_id ASC) VISIBLE,
  CONSTRAINT fk_cliente_has_video_cliente
    FOREIGN KEY (cliente_id)
    REFERENCES cravo_canela.perfil_cliente (id),
  CONSTRAINT fk_cliente_has_video_video1
    FOREIGN KEY (video_id)
    REFERENCES cravo_canela.video (id))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;

--------------------------------------------------------------------------------------------------------------------------------------------
-- TABELA perfil_cliente --

INSERT INTO perfil_cliente VALUES (null, 'Joyce Louzano Montilla', 'joyce@joyce.com.br', 'sR&4ZVunNKXf', '(85) 99697-3025', 'joyce_motilla', 
			'589.388.613-50', '2022-08-12', null);

INSERT INTO perfil_cliente VALUES (null, 'Telma Cosme Mata', 'telma@telma.com.br', 'fiX)@5*I5_5', '(28) 98686-4857', 'telma_mata', 
			'486.555.217-01', '2022-02-06', null);

INSERT INTO perfil_cliente VALUES (null, 'Mayane Firmino Pena', 'mayane@mayane.com.br', '8$O=BoKEdUSE', '(65) 98058-5623', 'mayane_pena', 
			'734.273.101-32', '2022-03-14', null);

INSERT INTO perfil_cliente VALUES (null, 'Laricia Queiroz Caruso', 'laricia@laricia.com.br', '&ml(Ld=4cdpY', '(93) 98668-7796', 'laricia_queiroz', 
			'416.126.822-00', '2022-05-15', null);

INSERT INTO perfil_cliente VALUES (null, 'Nelma Aguiar Darmont', 'nelma@nelma.com.br', 'YtF66bMmK*7V', '(32) 97318-5874', 'nelma_darmont', 
			'052.562.076-10', '2022-09-20', null);

INSERT INTO perfil_cliente VALUES (null, 'Amanda Trancoso Barcelos', 'amanda@amanda.com.br', '$$v7DK4@jIbl', '(68) 97513-6523', 'amanda_barcelos', 
			'963.117.942-76', '2022-01-30', null);

INSERT INTO perfil_cliente VALUES (null, 'Yasmin Santomauro Silveira', 'yasmin@yasmin.com.br', '8YIG&zbEfS!8', '((98) 97951-5401', 'yasmin_silveira', 
			'724.663.213-19', '2022-07-25', null);

INSERT INTO perfil_cliente VALUES (null, 'Julieta Goulart Leandro', 'julieta@julieta.com.br', '*)&x34p6ul$S', '(68) 99104-1440', 'julieta_leandro', 
			'669.331.182-23', '2022-09-16', null);

INSERT INTO perfil_cliente VALUES (null, 'Regiane Carvel Prucho', 'regiane@regiane.com.br', '+GyG*zKHbhr1', '(22) 98391-8139', 'regiane_prucho', 
			'644.761.037-15', '2022-06-02', null);

INSERT INTO perfil_cliente VALUES (null, 'Margareth França Correia', 'margareth@margareth.com.br', 'SbLHAoHq5N7E', '(33) 99536-1377', 'margareth_correia', 
			'331.214.906-13', '2022-04-20', null);

----------------------------------------------------------------------------------------------------------------------------------------

-- TABELA video --

INSERT INTO video VALUES (null, 'Aula 01 - Breve Introdução sobre MEAN', 'Durante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 02 - Preparação ao Ambiente de Desenvolvimento', 'Durante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');


INSERT INTO video VALUES (null, 'Aula 03 - Instalação do Angular 7 & Outras Dependências', 'urante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 04 - Criando os Componentes no Angular', 'Durante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 05 - Criando Navegação (NavBar) com Angular', 'Durante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ. ', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 06 - Inclusão do Pacote: Angular 2 Slim Loading Bar', 'Durante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 07 - Desenvolvendo os Eventos Router do Ng2 Slim na Aplicação', 'Durante o tutorial, você aprenderá a desenvolver uma 
			aplicação que consisthistoricoe em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 08 - Desenvolvimento do Form com Bootstrap na Aplicação', 'Durante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 09 - Desenvolvimento da Validação dos Forms', 'Durante o tutorial, você aprenderá a desenvolver uma aplicação 
			que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Aula 10 - Criação da Classe Modelo & Início Desenvolvimento do HttpClient', 'Durante o tutorial, você aprenderá a desenvolver 
			uma aplicação que consiste em realizar um cadastro de um Funcionário para uma empresa XYZ.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Fundamentos do SQL - Curso de SQL - Aula 1', 'Nessa aula eu quero te mostrar os fundamentos básicos do SQL para que você entenda algumas coisas importantes.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Instalação do MySQL e Criação das Primeiras Consultas - Curso de SQL - Aula 2', 'Na aula de hoje eu quero te mostrar a instalação do MySQL e como fazer suas primeiras consultas no MySQL.',
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Criando Filtros no SQL com o Comando WHERE - Curso de SQL - Aula 3', 'Nessa aula eu quero te mostrar como criar filtros no SQL com o comando WHERE.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Funções de Agregação no SQL (SUM, COUNT, AVG, MIN e MAX) - Curso de SQL - Aula 4', 'Nessa aula eu quero te mostrar como usar as funções de agregação no SQL, ou seja, como você pode fazer as operações básicas no SQL.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Criando agrupamentos com GROUP BY - Curso de SQL - Aula 5', 'Na aula de hoje eu quero te ensinar sobre agrupamentos no SQL, ou seja, vamos estar criando agrupamentos com GROUP BY.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');
            
INSERT INTO video VALUES (null, 'Relacionamento de Tabelas com INNER JOIN - Curso de SQL - Aula 6', 'Hoje nós vamos abordar os relacionamentos entre tabelas no SQL, ou seja, vamos poder fazer uma relação entre as tabelas para que possamos ter uma 
			análise muito melhor e mais detalhada das informações.', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Tem Aula! Tipos Abstratos de Dados', 'Quer entender um pouco mais sobre Estruturas de Dados e Tipos Abstratos de Dados? 
			Então cola na aula que vamos discutir um monte de coisa massa!', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Tem Aula! Pilha: Conceitos e Implementação', 'Bora ver a implementação inteira da Pilha? 
			Então bem vindo a mais uma aula desse nosso curso de Estruturas de Dados', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Tem Aula! Fila: Conceitos e Implementação', 'Sejam bem vindo a mais uma aula desse nosso curso de Estruturas de Dados. 
			Hoje o tema é Fila!', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');

INSERT INTO video VALUES (null, 'Tem Aula! Listas Encadeadas: Conceito e Implementação', 'Sejam bem vindo a mais uma aula desse nosso curso de Estruturas de Dados. 
			Hoje o tema é Listas Encadeadas...ficou em dúvida?! Assiste ai.. Você vai ver que é mais tranquilo do que imagina :D', 
			'https://www.youtube.com/watch?v=NJEZDV77bhQ&list=PLb2HQ45KP0Wv5ZKHK-qHENtY_63LiumFq&index=1', 0, null, '');
            

-------------------------------------------------------------------------------------------------------------------------------------------            
-- TABELA historico --

INSERT INTO historico VALUES (null, '2022-04-15', 1, 15);
INSERT INTO historico VALUES (null, '2022-04-19', 1, 11);
INSERT INTO historico VALUES (null, '2022-07-01', 1, 13);
INSERT INTO historico VALUES (null, '2022-08-07', 1, 2);
INSERT INTO historico VALUES (null, '2022-01-11', 2, 6);
INSERT INTO historico VALUES (null, '2022-02-09', 2, 8);
INSERT INTO historico VALUES (null, '2022-02-11', 2, 18);
INSERT INTO historico VALUES (null, '2022-02-13', 2, 16);
INSERT INTO historico VALUES (null, '2022-01-24', 3, 1);
INSERT INTO historico VALUES (null, '2022-02-07', 3, 3);
INSERT INTO historico VALUES (null, '2022-03-10', 3, 7);
INSERT INTO historico VALUES (null, '2022-03-11', 3, 14);
INSERT INTO historico VALUES (null, '2022-02-16', 4, 19);
INSERT INTO historico VALUES (null, '2022-03-28', 4, 4);
INSERT INTO historico VALUES (null, '2022-04-29', 4, 12);
INSERT INTO historico VALUES (null, '2022-05-08', 4, 9);
INSERT INTO historico VALUES (null, '2022-02-09', 5, 10);
INSERT INTO historico VALUES (null, '2022-06-03', 5, 5);
INSERT INTO historico VALUES (null, '2022-07-01', 5, 20);
INSERT INTO historico VALUES (null, '2022-09-08', 5, 17);
INSERT INTO historico VALUES (null, '2022-01-08', 6, 7);
INSERT INTO historico VALUES (null, '2022-01-12', 6, 16);
INSERT INTO historico VALUES (null, '2022-01-24', 6, 18);
INSERT INTO historico VALUES (null, '2022-01-27', 6, 2);
INSERT INTO historico VALUES (null, '2022-02-09', 7, 4);
INSERT INTO historico VALUES (null, '2022-04-15', 7, 11);
INSERT INTO historico VALUES (null, '2022-05-13', 7, 3);
INSERT INTO historico VALUES (null, '2022-07-03', 7, 20);
INSERT INTO historico VALUES (null, '2022-01-04', 8, 9);
INSERT INTO historico VALUES (null, '2022-02-17', 8, 1);
INSERT INTO historico VALUES (null, '2022-05-01', 8, 5);
INSERT INTO historico VALUES (null, '2022-07-02', 8, 13);
INSERT INTO historico VALUES (null, '2022-01-07', 9, 8);
INSERT INTO historico VALUES (null, '2022-04-10', 9, 12);
INSERT INTO historico VALUES (null, '2022-04-13', 9, 14);
INSERT INTO historico VALUES (null, '2022-05-19', 9, 15);
INSERT INTO historico VALUES (null, '2022-01-26', 10, 19);
INSERT INTO historico VALUES (null, '2022-03-02', 10, 17);
INSERT INTO historico VALUES (null, '2022-03-24', 10, 10);
INSERT INTO historico VALUES (null, '2022-04-20', 10, 6);

