SELECT * FROM bd_svcv.Cliente;
SELECT * FROM bd_svcv.Endereco;

-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.endereco'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Endereco;

INSERT INTO bd_svcv.Endereco (CEP, Rua, Numero, Bairro, Cidade, Estado) 
values ('64255000', 'Padre Aureo', 145, 'Vila Kolping', 'Pedro II', 'PI'),
('64255000', 'Boa Esperança', 86, 'Santa Fé', 'Pedro II', 'PI'), 
('64049548', 'Av. Raul Lopes', 2021, 'Fátima', 'Teresina', 'PI'), 
('64049010', 'Av Joao XXIII', 3565, 'Centro', 'Teresina', 'PI'),
('64255000', 'Av. Coronel Cordeiro', 145, 'Vila Operaria', 'Pedro II', 'PI');

-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.cliente'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Cliente;

INSERT INTO bd_svcv.Cliente (CPF, Nome, Data_Nascimento, Telefone, `E-mail`, idEndereco)
values ('16285767157','Alexandre Vinicius Nascimento','1997-12-04', '81984220981','alexandre.marcos@gmail.com',1),
('79541929389','Noah Raul Silva','1984-02-14', '86997887389','raimundogiovannicarvalho@gmail.com',3),
('16485767157','Odimar Souza Falcao Filho','1996-02-04', '81984247981','odimarfalcao@gmail.com',5),
('61046998394','Jose Medeiros Uchoa','1986-06-14', '81934653276','odimarfalcao@gmail.com',5);

-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.veiculo'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Veiculo;

INSERT INTO bd_svcv.Veiculo (Modelo, Chassi, Marca, Portas, Cor, `Câmbio`, Preco_min, Preco_ven, Ano, Quilometragem)
values ('F-250 Tropicampo CD 3.9 TB Diesel', '9BD178456W1234789', 'Ford', 4, 'Vermelho', 'Automático', 68000, 72589, 2007, 172000),
('Fiat Argo 1.0 Firefly', '9BD178226W1234567', 'Fiat', 4, 'Vermelho', 'Manual', 43000, 45009, 2018, 0),
('Fiat Argo 1.0 Firefly', '9BD178226W6544867', 'Fiat', 4, 'Branco', 'Manual', 43000, 45009, 2018, 0),
('Toyota Corolla Sedan 1.8', '8BD177856X4564567', 'Toyota', 5, 'Amarelo', 'Automático', 49000, 55009, 2015, 55000),
('Toyota Corolla Sedan 1.8', '8BD177345X4486432', 'Toyota', 5, 'Vermelho', 'Automático', 49000, 56009, 2015, 55000),
('Toyota Corolla Sedan 1.8', '8BD177895X5864767', 'Toyota', 5, 'Branco', 'Automático', 49000, 55009, 2015, 55000),
('Toyota Hilux 2.7 SRV 4X4 CD', '8BD177895X5867898', 'Toyota', 4, 'Branco', 'Automático', 89000, 95009, 2015, 60000),
('Toyota Hilux 2.7 SRV 4X4 CD', '8BD177895X5867778', 'Toyota', 4, 'Cinza', 'Automático', 90000, 110009, 2015, 25000),
('Fiat Uno Attractive 1.0 Firefly', '9BD154546W6544867', 'Fiat', 4, 'Cinza', 'Manual', 29000, 37009, 2017, 45000),
('Fiat Uno Attractive 1.0 Firefly', '9BD154546W6567667', 'Fiat', 4, 'Cinza', 'Manual', 32000, 37009, 2017, 34000)
;

-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.fornecedor'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Fornecedor;

INSERT INTO bd_svcv.Fornecedor (Razao_Social, Nome_Fantasia, CNPJ, idEndereco, Telefone)
values ('Newland Veiculos Ltda', 'Newland Toyota', '41597303000544', 3, '8621031300'),
('Jelta Veiculos E Maquinas Ltda', 'Jelta Veiculos', '05385026000380', 4, '8621031470');

-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.funcionario'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Funcionario;

INSERT INTO bd_svcv.Funcionario (CPF, Nome, Usuario, Senha, Data_Nascimento, `E-mail`,Telefone)
values ('1628574567', 'Moises Juliano Santos', 'moises16', '1234', '1995-01-15','moisesp2@gmail.com','86981374534'),
('2357568967', 'Carlos Henrique Gomes', 'carlos23', '1234', '1976-04-23','carlosp2@gmail.com','86995678900');

-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.venda'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Venda;

INSERT INTO bd_svcv.Venda (idCliente, idVeiculo, idFuncionario,Dat_Hor_Venda)
values 
(1, 5, 1, '2019-01-19 14:59:00');


-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.compra_pf'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Compra_PF;

INSERT INTO bd_svcv.Compra_PF (idCliente, idVeiculo, idFuncionario, Dat_Hor_Compra)
values (1, 1, 2, '2019-01-18 14:59:00');

-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.compra_pj'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Compra_PJ;

INSERT INTO bd_svcv.Compra_PJ (idFornecedor, Dat_Hor_Compra)
values (1, '2019-01-14 14:59:00');
-- -----------------------------------------------------
-- INSERINDO NA TABELA 'bd_svcv.item_compra'
-- -----------------------------------------------------
SELECT * FROM bd_svcv.Item_Compra;

INSERT INTO bd_svcv.Item_Compra (idCompra_PJ, idVeiculo, Valor)
values (1, 4, 48000), (1, 5, 48000), (1, 6, 48000), (1, 7, 88000),
(1, 8, 89500);  