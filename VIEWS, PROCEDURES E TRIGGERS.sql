DROP DATABASE bd_svcv;


-- >>>>>>>>>>>> VIEW <<<<<<<<<<<<<<<<<<

-- View para saber o modelo mais vendido  *Pode ser melhorado para saber em um determinado período (Ultimos 30 dias);

CREATE OR REPLACE VIEW vw_maisVend 
AS SELECT Modelo, count(Modelo) as Quantidade_Vendida from bd_svcv.Venda natural join bd_svcv.Veiculo
group by Modelo order by Quantidade_Vendida desc;

-- View para saber quais carros estão a venda;

CREATE OR REPLACE VIEW vw_VeiculoAVenda
AS SELECT * from Veiculo where idVeiculo not in (SELECT idVeiculo from Venda) order by Marca asc, Modelo asc;

-- >>>>>>>>>>>> PROCEDURES <<<<<<<<<<<<<<<<<<

-- Procedure para atualizar o Valor de uma compra de pessoa Jurídica

DELIMITER //
CREATE PROCEDURE Atualiza_Valor (IN Valor_Veiculo DECIMAL(7,2), IN Referencia INT)
BEGIN 
	UPDATE Compra_PJ SET Valor = Valor + Valor_Veiculo WHERE Compra_PJ.idCompra_PJ = Referencia;
END
// 
DELIMITER ;

-- Procedure para atualizar data e hora do pagamento na tabela Venda

DELIMITER //
CREATE PROCEDURE Prc_Set_Time_Venda (IN tempo DATETIME, IN Ref_Vei INT, IN Ref_Cli INT)
BEGIN 
	UPDATE Venda SET Venda.`Dat_Hor_Pag` = tempo WHERE idVeiculo = Ref_Vei and idCliente = Ref_Cli;
END
// 
DELIMITER ;
CALL Prc_Set_Time_Venda ('2019-01-18 14:59:00',4,1);
-- >>>>>>>>>>>> TRIGGERS <<<<<<<<<<<<<<<<<<

-- Trigger para atualizar o Valor de uma compra de pessoa Jurídica
drop TRIGGER Trg_AtualizarValor;

DELIMITER //
CREATE TRIGGER Trg_AtualizarValor AFTER INSERT
ON ItemCompra
FOR EACH ROW
BEGIN
	CALL Atualiza_Valor(NEW.Valor, NEW.idCompra_PJ);
END
 //
DELIMITER ;