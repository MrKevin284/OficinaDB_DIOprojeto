CREATE DATABASE IF NOT EXISTS modFis_OficinaDB;
USE modFis_OficinaDB;

Drop Database modFis_OficinaDB;
SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;

-- Criação das Tabelas
CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

CREATE TABLE Veiculo (
    VeiculoID INT PRIMARY KEY,
    ClienteID INT,
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Ano INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE Servico (
    ServicoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao TEXT,
    Preco DECIMAL(10, 2)
);

CREATE TABLE OrdemDeServico (
    OrdemID INT PRIMARY KEY,
    ClienteID INT,
    VeiculoID INT,
    DataEntrada DATE,
    DataConclusao DATE,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (VeiculoID) REFERENCES Veiculo(VeiculoID)
);

CREATE TABLE ItemServico (
    ItemID INT PRIMARY KEY,
    OrdemID INT,
    ServicoID INT,
    Quantidade INT,
    FOREIGN KEY (OrdemID) REFERENCES OrdemDeServico(OrdemID),
    FOREIGN KEY (ServicoID) REFERENCES Servico(ServicoID)
);

-- Inserção de Dados de Exemplo
INSERT INTO Cliente (ClienteID, Nome, Email, Telefone) VALUES
(1, 'João', 'joao@example.com', '123-456-7890'),
(2, 'Maria', 'maria@example.com', '987-654-3210');

INSERT INTO Veiculo (VeiculoID, ClienteID, Marca, Modelo, Ano) VALUES
(1, 1, 'Toyota', 'Corolla', 2020),
(2, 2, 'Ford', 'Focus', 2018);

INSERT INTO Servico (ServicoID, Nome, Descricao, Preco) VALUES
(1, 'Troca de Óleo', 'Troca de óleo do motor', 50.00),
(2, 'Alinhamento', 'Alinhamento das rodas', 80.00);

INSERT INTO OrdemDeServico (OrdemID, ClienteID, VeiculoID, DataEntrada, DataConclusao) VALUES
(1, 1, 1, '2023-08-01', '2023-08-05'),
(2, 2, 2, '2023-08-03', '2023-08-07');

INSERT INTO ItemServico (ItemID, OrdemID, ServicoID, Quantidade) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 2, 1);
-- Consultas Exemplos
-- Recuperação simples com SELECT Statement
SELECT * FROM Cliente;
SELECT * FROM Veiculo;

-- Filtros com WHERE Statement
SELECT * FROM Cliente WHERE Nome = 'João';
SELECT * FROM Veiculo WHERE Marca = 'Toyota';

-- Expressões para gerar atributos derivados
SELECT Cliente.Nome, CONCAT(Veiculo.Marca, ' ', Veiculo.Modelo) AS ModeloCompleto
FROM Cliente
INNER JOIN Veiculo ON Cliente.ClienteID = Veiculo.ClienteID;

-- Ordenações dos dados com ORDER BY
SELECT * FROM Servico ORDER BY Preco DESC;
SELECT * FROM Cliente ORDER BY Nome ASC;

-- Condições de filtros aos grupos – HAVING Statement
SELECT Veiculo.ClienteID, COUNT(*) AS NumVeiculos
FROM Veiculo
GROUP BY Veiculo.ClienteID
HAVING NumVeiculos > 1;

-- Junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
SELECT Cliente.Nome, Veiculo.Marca, Veiculo.Modelo
FROM Cliente
INNER JOIN Veiculo ON Cliente.ClienteID = Veiculo.ClienteID;