
-- Criação da tabela de Animais
CREATE TABLE Animais (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    raca VARCHAR(30),
    idade INT,
    data_resgate DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Em Tratamento'
);

-- Criação da tabela de Tratamentos
CREATE TABLE Tratamentos (
    id_tratamento INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT,
    tipo_tratamento VARCHAR(50),
    data_tratamento DATE,
    observacoes TEXT,
    FOREIGN KEY (id_animal) REFERENCES Animais(id_animal)
);

-- Criação da tabela de Adoções
CREATE TABLE Adocoes (
    id_adocao INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT,
    id_voluntario INT,
    id_doador INT,
    data_adocao DATE NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES Animais(id_animal),
    FOREIGN KEY (id_voluntario) REFERENCES Voluntarios(id_voluntario),
    FOREIGN KEY (id_doador) REFERENCES Doadores(id_doador)
);

-- Criação da tabela de Voluntários
CREATE TABLE Voluntarios (
    id_voluntario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(50)
);

-- Criação da tabela de Doadores
CREATE TABLE Doadores (
    id_doador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(50)
);
