CREATE DATABASE gerenciaobra;

USE gerenciaobra;

CREATE TABLE obras (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    quem_paga VARCHAR(255) NOT NULL
);

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('admin', 'user') NOT NULL DEFAULT 'user'
);

CREATE TABLE users_obras (
    user_id INT,
    obra_id INT,
    PRIMARY KEY(user_id, obra_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (obra_id) REFERENCES obras(id)
);

CREATE TABLE formulario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_lancamento DATE,
    solicitante VARCHAR(255),
    titular VARCHAR(255),
    referente TEXT,
    valor DECIMAL(10, 2),
    obra VARCHAR(255),
    data_pagamento DATE,
    forma_pagamento VARCHAR(50),
    lancado VARCHAR(5), -- Aumentei para VARCHAR(5) para evitar o erro de truncação
    cpf_cnpj VARCHAR(20),
    chave_pix VARCHAR(255),
    data_competencia DATE,
    observacao TEXT,
    carimbo DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, password_hash, role)
VALUES ('fabricio', '123456', 'admin');

INSERT INTO users (username, password_hash, role)
VALUES ('user', '$2b$12$emMioHAl/PNSWsTnf5HjHewYC4DbCJmR83xXyKAEZAwjB5O6A81y6', 'user');
