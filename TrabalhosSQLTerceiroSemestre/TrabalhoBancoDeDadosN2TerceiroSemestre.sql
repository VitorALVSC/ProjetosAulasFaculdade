/*
1.Crie as tabelas no banco de dados usando SQL.
*/

CREATE DATABASE Biblioteca;

USE Biblioteca;

CREATE TABLE Autores (
Codigo_Autor  INTEGER PRIMARY KEY IDENTITY(1,1),
Nome VARCHAR(150) NOT NULL,
Pais VARCHAR(100) NOT NULL,
Data_Nascimento DATE
);

INSERT INTO Autores (Nome, Pais, Data_Nascimento)
VALUES
('Autor 1','Brasil', '1962/01/08'),
('Autor 2','Argentina', '2000/11/03'),
('Autor 3','Estados Unidos', '1999/06/03'),
('Autor 4','Brasil', '1977/08/22'),
('Autor 5','Brasil', '1994/03/11'),
('Autor 6','Africa', '1992/09/17'),
('Autor 7','Austrália', '1998/05/17'),
('Autor 8','Itália', '1964/05/07'),
('Autor 9','Brasil', '1955/07/13'),
('Autor 10','Alemanha', '1996/02/25'),
('Autor 11','Brasil', '1998/01/19');

SELECT * FROM Autores WITH(NOLOCK);

CREATE TABLE Generos (
Codigo_Genero INTEGER PRIMARY KEY IDENTITY(1,1),
Nome VARCHAR(10) NOT NULL UNIQUE,
);

INSERT INTO Generos (Nome)
VALUES
('Ação'),
('Infantil'),
('Romançe'),
('Contos'),
('Drama');

SELECT * FROM Autores WITH(NOLOCK);
SELECT * FROM Generos WITH(NOLOCK);

CREATE TABLE Livros (
Codigo_Livro INTEGER PRIMARY KEY IDENTITY(1,1),
Titulo VARCHAR(150) NOT NULL,
Codigo_Autor INTEGER CONSTRAINT FK_AutorLivros FOREIGN KEY (Codigo_Autor) REFERENCES Autores(Codigo_Autor),
Ano_Publicado DATETIME NOT NULL,
Codigo_Genero INTEGER CONSTRAINT FK_CodigoGeneroLivros FOREIGN KEY (Codigo_Genero) REFERENCES Generos(Codigo_Genero),
Quantidade INT NOT NULL DEFAULT 0
);

INSERT INTO Livros (Titulo, Codigo_Autor, Ano_Publicado, Codigo_Genero, Quantidade)
VALUES
('Livro 1', 1, '19991107 11:19:05', 1, 4),
('Livro 2', 2, '20220111 14:10:10', 2, 1),
('Livro 3', 3, '20180509 07:23:12', 3, 5),
('Livro 4', 4, '20051206 08:35:10', 4, 3),
('Livro 5', 5, '20010707 09:25:20', 5, 1),
('Livro 6', 6, '20210317 15:25:45', 1, 1),
('Livro 7', 7, '20131001 12:49:12', 1, 8),
('Livro 8', 8, '20110603 17:19:05', 1, 12),
('Livro 9', 9, '19800517 13:37:12', 2, 1),
('Livro 10', 10, '20211111 16:45:09', 3, 2),
('Livro 11', 11, '20240311 13:11:12', 3, 2),
('Livro 12', 1, '20240205 10:27:12', 5, 3),
('Livro 13', 1, '20240307 08:56:22', 2, 1),
('Livro 14', 3, '20220323 11:26:12', 2, 5),
('Livro 15', 5, '20240127 17:46:12', 1, 2),
('Livro 16', 5, '20210328 16:19:12', 5, 2),
('Livro 17', 5, '20240130 14:12:21', 1, 4),
('Livro 18', 11, '20240321 13:19:12', 1, 3),
('Livro 19', 9, '20170723 18:57:12', 1, 1),
('Livro 20', 7, '20110919 09:09:34', 5, 5),
('Livro 21', 4, '20090212 14:19:43', 4, 0),
('Livro 22', 2, '20101214 17:19:12', 5, 2),
('Livro 23', 1, '20080213 17:33:06', 2, 0),
('Livro 24', 1, '20220320 13:21:01', 1, 1),
('Livro 25', 1, '20240115 17:08:14', 1, 1);

SELECT * FROM Livros WITH(NOLOCK);

CREATE TABLE Usuarios (
Codigo_Usuario INTEGER PRIMARY KEY IDENTITY(1,1),
Nome VARCHAR(150) NOT NULL,
Email VARCHAR(100) NOT NULL UNIQUE,
Data_Cadastro DATETIME DEFAULT GETDATE()
);

INSERT INTO Usuarios (Nome, Email)
VALUES 
('João Silva', 'joao@teste.com'), 
('Maria Santos', 'maria@teste.com'),
('Vitor Alves', 'vitor@teste.com'),
('Raimundo Oliveira', 'raimundo@teste.com'),
('Sebastião Gonsalves', 'sebastiao@teste.com');

SELECT * FROM Usuarios WITH(NOLOCK);

CREATE TABLE Situacao (
Codigo_Situacao INTEGER PRIMARY KEY IDENTITY(1,1),
Descricao VARCHAR(30) NOT NULL UNIQUE
);

INSERT INTO Situacao (Descricao)
VALUES
('Emprestado'),
('Devolvido');

SELECT * FROM Situacao WITH(NOLOCK);

CREATE TABLE Emprestimos (
Codigo_Emprestimo INTEGER PRIMARY KEY IDENTITY(1,1),
Codigo_Livro INTEGER CONSTRAINT FK_CodigoLivroEmprestimos FOREIGN KEY (Codigo_Livro) REFERENCES Livros(Codigo_Livro),
Codigo_Usuario INTEGER CONSTRAINT FK_CodigoUsuarioEmprestimos FOREIGN KEY (Codigo_Usuario) REFERENCES Usuarios(Codigo_Usuario),
Data_Emprestimo DATETIME DEFAULT GETDATE(),
Data_Devolucao DATETIME NOT NULL,
Codigo_Situacao INTEGER DEFAULT 1 CONSTRAINT FK_CodigoSituacao FOREIGN KEY (Codigo_Situacao) REFERENCES Situacao(Codigo_Situacao)
);

INSERT INTO Emprestimos (Codigo_Livro, Codigo_Usuario, Data_Emprestimo, Data_Devolucao)
VALUES 
(1, 1, GETDATE(), GETDATE() + 7),
(2, 3, GETDATE(), GETDATE() + 7),
(8, 5, GETDATE(), GETDATE() + 7),
(20, 3, GETDATE(), GETDATE() + 7),
(14, 4, GETDATE(), GETDATE() + 7);

UPDATE Emprestimos SET Data_Emprestimo = '20240424 19:12:12.000';
UPDATE Emprestimos SET Data_Devolucao = '20240424 19:12:12.000';

UPDATE Emprestimos SET Data_Emprestimo = '20240510 17:33:06' WHERE Codigo_Usuario = 4;
UPDATE Emprestimos SET Data_Devolucao = '20240517 17:33:06' WHERE Codigo_Usuario = 4;

UPDATE Emprestimos SET Codigo_Situacao = 2 WHERE Codigo_Usuario = 1;
UPDATE Emprestimos SET Codigo_Situacao = 2 WHERE Codigo_Usuario = 5;

SELECT * FROM Emprestimos WITH(NOLOCK);



/*
2.Implemente uma função que calcule a idade média dos autores.
DATEDIFF - Calcula a diferença em anos entre a data de nascimento de cada autor e a data atual.
AVG - Percorre os valores de DATEDIFF e calcula á média desses valores.
*/

CREATE FUNCTION MediaIdades 
()
RETURNS INT
AS
BEGIN
	-- Variável que recebe a média das idades
    DECLARE @MediaIdade INT;

    SELECT @MediaIdade = AVG(DATEDIFF(YEAR, Data_Nascimento, GETDATE())) FROM Autores;

    RETURN @MediaIdade;
END;

SELECT dbo.MediaIdades() AS MediaIdadesAutores;

/*
3.Escreva uma stored procedure que receba o ID de um livro e retorne o número de cópias disponíveis desse livro (livros que não foram emprestados).
*/
CREATE PROCEDURE CopiasDisponiveis
	-- Variável que recebe o ID Codigo_Livro
    @Codigo_Livro INT
AS
BEGIN

    -- Pega a quantidade de livro emprestado contando a quantidade de vezes que apareçe o Codigo_Livro na tabela empréstimos
    DECLARE @CopiasEmprestadas INT;
	SELECT @CopiasEmprestadas = COUNT(*) FROM Emprestimos WHERE Codigo_Livro = @Codigo_Livro;

    -- Pega a quantidade de livros que tem disponível através do Codigo_Livro na tabela Livros 
    DECLARE @QuantidadeCopias INT;
    SELECT @QuantidadeCopias = Quantidade FROM Livros WHERE Codigo_Livro = @Codigo_Livro;

    -- Realiza o calculo da quantidade de livros disponíveis menos a quantidade de livros emprestados.
    DECLARE @CopiasDisponiveis INT;
    SET @CopiasDisponiveis = @QuantidadeCopias - @CopiasEmprestadas;

    -- Retornar o número de cópias que ainda está disponível
    SELECT @CopiasDisponiveis AS CopiasDisponiveisEstoque;
END;

EXEC CopiasDisponiveis @Codigo_Livro = 1;

SELECT * FROM Livros WITH(NOLOCK);
SELECT * FROM Emprestimos WITH(NOLOCK);



/*
4.Crie uma função para verificar se um usuário possui algum livro atrasado.
*/

CREATE FUNCTION LivroAtrasado 
	-- Variável que recebe o ID Codigo_Usuario
	(@Codigo_Usuario INT)
RETURNS VARCHAR(100)
AS
BEGIN
	-- Variável que recebe a mensagem
	DECLARE @Mensagem VARCHAR(100);

	--Validação verificando se a data de devolução é menor que o dia atual para informar se o emprestimo está atrasado ou não
    IF EXISTS (SELECT * FROM Emprestimos WHERE Codigo_Usuario = @Codigo_Usuario AND Data_Devolucao < GETDATE())
    BEGIN
        SET @Mensagem = 'Emprestimo atrasado';
    END
    ELSE
    BEGIN
        SET @Mensagem = 'Emprestimo em dia';
    END

    RETURN @Mensagem;
END;

SELECT dbo.LivroAtrasado(4) AS Mensagem;

SELECT * FROM Emprestimos WITH(NOLOCK);



/*
5.Implemente uma stored procedure para realizar um novo empréstimo, verificando se o livro está disponível e se o usuário não ultrapassou o limite de empréstimos.
*/

CREATE PROCEDURE RealizarEmprestimo 
    @Codigo_Livro INT,
    @Codigo_Usuario INT
AS
BEGIN
    -- Pega a quantidade de livros que tem disponível através do Codigo_Livro na tabela Livros
	DECLARE @QuantidadeLivros INT;
    SELECT @QuantidadeLivros = Quantidade FROM Livros WHERE Codigo_Livro = @Codigo_Livro;

	-- Pega a quantidade de livros emprestados através do Codigo_Livro na tabela Emprestimos
	DECLARE @CopiasEmprestadas INT;
	SELECT @CopiasEmprestadas = COUNT(*) FROM Emprestimos WHERE Codigo_Livro = @Codigo_Livro;

	-- Pega a quantidade de livros emprestados para o usuário através do Codigo_Usuario na tabela Emprestimos
	DECLARE @QuantidadeEmprestimoUsuario INT;
	SELECT @QuantidadeEmprestimoUsuario = COUNT(*) FROM Emprestimos WHERE Codigo_Usuario = @Codigo_Usuario;

	--Verifica se a quantidade de livros é maior que a quantidade de livros emprestados e se a quantidade de emprestimos do usuário é menor que 3
	IF @QuantidadeLivros > @CopiasEmprestadas AND @QuantidadeEmprestimoUsuario < 3
	BEGIN
        -- Realizar o novo empréstimo
        INSERT INTO Emprestimos (Codigo_Livro, Codigo_Usuario, Data_Emprestimo, Data_Devolucao)
        VALUES (@Codigo_Livro, @Codigo_Usuario, GETDATE(), GETDATE());

        PRINT 'Novo empréstimo realizado com sucesso.';
    END
    ELSE
    BEGIN
		--Verifica se a quantidade de livros é menor ou igual a quantidade de livros disponíveis
        IF  @QuantidadeLivros <= @CopiasEmprestadas
        BEGIN
            PRINT 'O livro não está disponível para empréstimo.';
        END
        ELSE
		BEGIN
			--Verifica se a quantidade de livros emprestados para o usuário é maior ou igual a 3
			IF @QuantidadeEmprestimoUsuario >= 3
			BEGIN
				PRINT 'O usuário atingiu o limite de empréstimos.';
			END
		END
    END
END;

DROP PROCEDURE RealizarEmprestimo

EXEC RealizarEmprestimo @Codigo_Livro = 1, @Codigo_Usuario = 4;

EXEC CopiasDisponiveis @Codigo_Livro = 1;



/*
6.Escreva uma função que liste todos os livros emprestados por um usuário específico.
*/

CREATE FUNCTION ListaDeLivrosEmprestados 
    (@Codigo_Usuario INT)
RETURNS TABLE
AS
RETURN
(
	--Seleciona as colunas informando os dados das tabelas emprestimos e livros
    SELECT Emprestimos.Codigo_Usuario, Livros.Codigo_Autor, Livros.Titulo, Emprestimos.Data_Emprestimo
    FROM Emprestimos
	--Realiza a junção de valores realizando a comparação através do Codigo_Livro
    INNER JOIN Livros ON Emprestimos.Codigo_Livro = Livros.Codigo_Livro
    WHERE Emprestimos.Codigo_Usuario = @Codigo_Usuario
);

SELECT * FROM ListaDeLivrosEmprestados(3);

SELECT * FROM Emprestimos WITH(NOLOCK);



/*
7.Crie uma stored procedure para estender o prazo de devolução de um livro emprestado, aumentando em 7 dias a data de devolução.
*/

CREATE PROCEDURE EstendeDevolucao
    @Codigo_Livro INT,
    @Codigo_Usuario INT
AS
BEGIN
	-- Realiza o select para obter a data atual do emprestimo
    DECLARE @DataAtual DATETIME;
	SELECT @DataAtual = Data_Emprestimo FROM Emprestimos WHERE @Codigo_Usuario = @Codigo_Usuario;
    
	-- Realiza a processo de alteração de data
	DECLARE @NovaDataDevolucao DATETIME;
    SET @NovaDataDevolucao = @DataAtual + 7;

    -- Atualiza a tabela Emprestimos com a nova data de devolução
    UPDATE Emprestimos SET Data_Devolucao = @NovaDataDevolucao WHERE Codigo_Livro = @Codigo_Livro AND Codigo_Usuario = @Codigo_Usuario;
	
	-- Mostra a mensagem de operação realizada
    PRINT 'Operação realizada com sucesso!';
END;

EXEC EstendeDevolucao @Codigo_Livro = 20, @Codigo_Usuario = 3;

SELECT * FROM Emprestimos WITH(NOLOCK);



/*
8.Implemente uma função que retorne o número total de livros emprestados no momento.
*/
	
CREATE FUNCTION LivrosEmprestados
()
RETURNS VARCHAR(100)
AS
BEGIN
	-- Variável que recebe a mensagem
	DECLARE @MensagemQtd VARCHAR(100);

	-- Variável que recebe a quantidade de livros emprestados
	DECLARE @QuantidadeLivrosEmprestados INT;

	-- Select que realiza a contagem de quantidade de registros da tabela empréstimo que estão com a situação igual a 1
    SELECT @QuantidadeLivrosEmprestados = COUNT(*) FROM Emprestimos WHERE Codigo_Situacao = 1;
    BEGIN
		-- Mensagem que mostrará a quantidade de livros emprestados
        SET @MensagemQtd = CAST(@QuantidadeLivrosEmprestados AS VARCHAR(100)) + ' livros emprestados no momento';
    END

    RETURN @MensagemQtd;
END;

SELECT dbo.LivrosEmprestados();

SELECT * FROM Emprestimos WITH(NOLOCK);