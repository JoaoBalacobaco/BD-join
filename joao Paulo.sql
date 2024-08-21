create database vendas;
use vendas;

create table produto(
codigo_produto integer,
descricao_produto varchar(30),
preco_produto float
);
create table nota_fiscal(
numero_nf integer,
data_nf date,
Valor_nf float
);
create table itens(
produto_codigo_produto integer,
nota_fiscal_numero_nf integer(30),
num_item integer,
qtde_item integer
);
ALTER TABLE Produto MODIFY COLUMN Descricao_Produto VARCHAR(50);

ALTER TABLE Nota_Fiscal
ADD COLUMN ICMS FLOAT AFTER Numero_NF;

ALTER TABLE Produto
ADD COLUMN PESO FLOAT;

ALTER TABLE Itens
DROP PRIMARY KEY;

ALTER TABLE Itens
ADD CONSTRAINT PK_Itens PRIMARY KEY (Num_Item);

SELECT * FROM Produto;
SELECT * FROM Nota_Fiscal;

SELECT * FROM Nota_Fiscal;

ALTER TABLE Nota_Fiscal
DROP COLUMN Data_NF;

DROP TABLE Itens;
RENAME TABLE Nota_Fiscal TO Venda;