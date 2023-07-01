CREATE TABLE proprietario (
	idProprietario INT GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR(50),
	sobrenome VARCHAR(50),
	PRIMARY KEY(idProprietario)
);

CREATE TABLE imovel (
	idImovel INT GENERATED ALWAYS AS IDENTITY,
	idProprietario INT,
	valor MONEY,
	observacao VARCHAR(255),
	detalhes VARCHAR(100),
	endereco VARCHAR(100),
	PRIMARY KEY(idImovel),
	CONSTRAINT fkProprietario FOREIGN KEY(idProprietario) REFERENCES proprietario(idProprietario)
);

ALTER TABLE proprietario ADD COLUMN telefone VARCHAR(12), ADD COLUMN endereco VARCHAR(100);
ALTER TABLE imovel DROP COLUMN detalhes;

DROP TABLE imovel;
DROP TABLE proprietario;