/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 17/11/2017 20:18:52          ***/
/******************************************************************************/

/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/

CREATE DOMAIN INTEGER AS 
INTEGER;

CREATE DOMAIN NEW_DOMAIN AS 
NUMERIC(10,0);

CREATE DOMAIN VARCHAR AS 
VARCHAR(1) CHARACTER SET NONE;



/******************************************************************************/
/***                               Exceptions                               ***/
/******************************************************************************/

/******************************************************************************/
/***                               Procedures                               ***/
/******************************************************************************/

SET TERM ^ ;

SET TERM ; ^



/******************************************************************************/
/***                            Tables and Views                            ***/
/******************************************************************************/

CREATE TABLE CAMPANHA (
    DATA_INICIAL DATE NOT NULL,
    DATA_FINAL DATE NOT NULL,
    NM_CAMPAN VARCHAR(50) CHARACTER SET NONE NOT NULL COLLATE NONE,
    FORNECEDOR_CD_FORNECEDOR INTEGER NOT NULL,
    COD_CAMPAN INTEGER NOT NULL,
    PRODUTO_CD_PRODUTO INTEGER NOT NULL);


CREATE TABLE CARGOS (
    CD_CARGOS INTEGER NOT NULL,
    NM_CARGOS VARCHAR(100) CHARACTER SET NONE NOT NULL COLLATE NONE,
    FUNCAO VARCHAR(100) CHARACTER SET NONE NOT NULL COLLATE NONE,
    SAL_INICIAL NUMERIC(15,2),
    DEPARTAMENTO_CD_DEPARTAMENTO INTEGER NOT NULL);


CREATE TABLE CARTAO_PONTOS (
    NUN_CARTAO INTEGER NOT NULL,
    DATA_CARTAO DATE NOT NULL,
    CLIENTE_CD_CLIENTE INTEGER NOT NULL,
    ACUMULA_PONTOS INTEGER);


CREATE TABLE CLIENTE (
    CD_CLIENTE INTEGER NOT NULL,
    NUN_CONTRATO INTEGER,
    NM_CLIENTE VARCHAR(150) CHARACTER SET NONE NOT NULL COLLATE NONE,
    DATA_NASC DATE NOT NULL,
    SEXO CHAR(1) CHARACTER SET NONE NOT NULL COLLATE NONE,
    P_EMAIL CHAR(1) CHARACTER SET NONE NOT NULL COLLATE NONE,
    EMAIL VARCHAR(100) CHARACTER SET NONE COLLATE NONE,
    TELEFONE CHAR(14) CHARACTER SET NONE COLLATE NONE,
    BAIRRO VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    CIDADE VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    ENEDERECO_TIPO VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    ENDERECO_RUA_NUN VARCHAR(200) CHARACTER SET NONE COLLATE NONE,
    RG VARCHAR(15) CHARACTER SET NONE COLLATE NONE,
    CPF VARCHAR(14) CHARACTER SET NONE COLLATE NONE,
    ESTADO VARCHAR(2) CHARACTER SET NONE COLLATE NONE,
    LIMITE INTEGER,
    DT_VENCIMENTO_BOLETO DATE,
    CEP VARCHAR(20) CHARACTER SET NONE COLLATE NONE);


CREATE TABLE DEPARTAMENTO (
    CD_DEPARTAMENTO INTEGER NOT NULL,
    NM_DEPARTAMENTO VARCHAR(100) CHARACTER SET NONE NOT NULL COLLATE NONE,
    EMPRESA_CD_EMPRESA INTEGER NOT NULL);


CREATE TABLE EMITE_CUPOM (
    CLIENTE_CD_CLIENTE INTEGER NOT NULL,
    COD_CUPOM INTEGER NOT NULL,
    VENDA_CD_VENDA INTEGER NOT NULL);


CREATE TABLE EMPRESA (
    INSCRICAO_MUNICIPAL INTEGER,
    INSCRICAO_ESTADUAL VARCHAR(10) CHARACTER SET NONE COLLATE NONE,
    RAZAO_SOCIAL VARCHAR(50) CHARACTER SET NONE COLLATE NONE,
    NM_FANTASIA VARCHAR(150) CHARACTER SET NONE NOT NULL COLLATE NONE,
    CNPJ VARCHAR(18) CHARACTER SET NONE COLLATE NONE,
    ATIVIDADE VARCHAR(100) CHARACTER SET NONE COLLATE NONE,
    ENQUA_TRIBUTARIO VARCHAR(150) CHARACTER SET NONE COLLATE NONE,
    CD_EMPRESA INTEGER NOT NULL,
    CAP_SOCIAL NUMERIC(15,2),
    BAIRRO VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    CIDADE VARCHAR(50) CHARACTER SET NONE COLLATE NONE,
    ESTADO VARCHAR(2) CHARACTER SET NONE COLLATE NONE,
    CEP VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    TELEFONE VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    FAX VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    OBSERVACAO VARCHAR(200) CHARACTER SET NONE COLLATE NONE,
    SITE VARCHAR(50) CHARACTER SET NONE COLLATE NONE,
    EMAIL VARCHAR(70) CHARACTER SET NONE COLLATE NONE,
    ENDERECO VARCHAR(200) CHARACTER SET NONE COLLATE NONE);


CREATE TABLE FORNECEDOR (
    INSCRICAO_ESTADUAL VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    PESSOA_FIS_JUR VARCHAR(10) CHARACTER SET NONE COLLATE NONE,
    CD_FORNECEDOR INTEGER NOT NULL,
    NM_FORNECEDOR VARCHAR(150) CHARACTER SET NONE NOT NULL COLLATE NONE,
    CATEGORIA VARCHAR(100) CHARACTER SET NONE COLLATE NONE,
    ESTADO VARCHAR(2) CHARACTER SET NONE COLLATE NONE,
    CIDADE VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    TELEFONE VARCHAR(20) CHARACTER SET NONE NOT NULL COLLATE NONE,
    EMAIL VARCHAR(30) CHARACTER SET NONE NOT NULL COLLATE NONE,
    ENDERECO VARCHAR(200) CHARACTER SET NONE COLLATE NONE,
    CNJP VARCHAR(20) NOT NULL,
    CEP VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    BAIRRO VARCHAR(30) CHARACTER SET NONE COLLATE NONE,
    FAX VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    PESSOA_CONTATO VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    REPRESENTANTE VARCHAR(20) CHARACTER SET NONE COLLATE NONE,
    REFERECIA VARCHAR(50) CHARACTER SET NONE COLLATE NONE,
    OBSERVACOES VARCHAR(30) CHARACTER SET NONE COLLATE NONE);


CREATE TABLE FUNCIONARIO (
    CD_FUNCIONARIO INTEGER NOT NULL,
    NM_FUNCIONARIO VARCHAR(100) CHARACTER SET NONE NOT NULL COLLATE NONE,
    CPF CHAR(14) CHARACTER SET NONE COLLATE NONE,
    CARGOS_CD_CARGOS INTEGER NOT NULL,
    RG VARCHAR(15),
    EMPRESA_CD_EMPRESA INTEGER NOT NULL);


CREATE TABLE ITEM_VENDAS (
    VENDA_CD_VENDA INTEGER NOT NULL,
    PRODUTO_CD_PRODUTO INTEGER NOT NULL);


CREATE TABLE LOGIN (
    USUARIO VARCHAR(10) CHARACTER SET NONE NOT NULL COLLATE NONE,
    SENHA VARCHAR(10) CHARACTER SET NONE NOT NULL COLLATE NONE);


CREATE TABLE PRODUTO (
    DT_ULTIMA_VENDA DATE,
    DT_ULTIMA_COMPRA DATE,
    QUANTIDADE INTEGER,
    TEMSORTEIO CHAR(10) CHARACTER SET NONE COLLATE NONE,
    CD_PRODUTO INTEGER NOT NULL,
    CD_BARRA INTEGER NOT NULL,
    NM_PRODUTO VARCHAR(100) CHARACTER SET NONE NOT NULL COLLATE NONE,
    P_CUSTO NUMERIC(15,2),
    P_VENDA NUMERIC(15,2) NOT NULL,
    FORNECEDOR_CD_FORNECEDOR INTEGER NOT NULL,
    MARCA VARCHAR(50) CHARACTER SET NONE COLLATE NONE,
    DATA_ULTIMA_MODIFICACAO DATE,
    VOLUME NUMERIC(18,2),
    PESO NUMERIC(15,2),
    VALIDADE DATE,
    LOTE VARCHAR(10) CHARACTER SET NONE COLLATE NONE,
    ALTURA NUMERIC(15,2),
    LARGURA NUMERIC(15,2),
    PROFUNDIDADE NUMERIC(15,2),
    FUNCIONARIO_CD_FUNCIONARIO INTEGER NOT NULL);


CREATE TABLE VENDA (
    CD_VENDA INTEGER NOT NULL,
    VALOR_COMPRA DECIMAL(18,0) NOT NULL,
    DATA_COMPRA DATE NOT NULL,
    FUNCIONARIO_CD_FUNCIONARIO INTEGER NOT NULL,
    CLIENTE_CD_CLIENTE INTEGER NOT NULL);




/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/


ALTER TABLE CAMPANHA ADD CONSTRAINT PK_CAMPANHA PRIMARY KEY (COD_CAMPAN);
ALTER TABLE CARGOS ADD CONSTRAINT PK_CARGOS PRIMARY KEY (CD_CARGOS);
ALTER TABLE CARTAO_PONTOS ADD CONSTRAINT PK_CARTAO_PONTOS PRIMARY KEY (NUN_CARTAO);
ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (CD_CLIENTE);
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (CD_DEPARTAMENTO);
ALTER TABLE EMITE_CUPOM ADD CONSTRAINT PK_EMITE_CUPOM PRIMARY KEY (COD_CUPOM);
ALTER TABLE EMPRESA ADD CONSTRAINT PK_EMPRESA PRIMARY KEY (CD_EMPRESA);
ALTER TABLE FORNECEDOR ADD CONSTRAINT PK_FORNECEDOR PRIMARY KEY (CD_FORNECEDOR);
ALTER TABLE FUNCIONARIO ADD CONSTRAINT PK_FUNCIONARIO PRIMARY KEY (CD_FUNCIONARIO);
ALTER TABLE LOGIN ADD CONSTRAINT PK_LOGIN PRIMARY KEY (USUARIO);
ALTER TABLE PRODUTO ADD CONSTRAINT PK_PRODUTO PRIMARY KEY (CD_PRODUTO);
ALTER TABLE VENDA ADD CONSTRAINT PK_VENDA_SORTEIO PRIMARY KEY (CD_VENDA);

/******************************************************************************/
/***                           Unique constraints                           ***/
/******************************************************************************/



/******************************************************************************/
/***                              Foreign keys                              ***/
/******************************************************************************/


ALTER TABLE CAMPANHA ADD CONSTRAINT FK_CAMPANHA_1 FOREIGN KEY (PRODUTO_CD_PRODUTO) REFERENCES PRODUTO (CD_PRODUTO);
ALTER TABLE CAMPANHA ADD CONSTRAINT FK_CAMPANHA_2 FOREIGN KEY (FORNECEDOR_CD_FORNECEDOR) REFERENCES FORNECEDOR (CD_FORNECEDOR);
ALTER TABLE CARGOS ADD CONSTRAINT FK_CARGOS_1 FOREIGN KEY (DEPARTAMENTO_CD_DEPARTAMENTO) REFERENCES DEPARTAMENTO (CD_DEPARTAMENTO);
ALTER TABLE CARTAO_PONTOS ADD CONSTRAINT FK_CARTAO_PONTOS_1 FOREIGN KEY (CLIENTE_CD_CLIENTE) REFERENCES CLIENTE (CD_CLIENTE);
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT FK_DEPARTAMENTO_1 FOREIGN KEY (EMPRESA_CD_EMPRESA) REFERENCES EMPRESA (CD_EMPRESA);
ALTER TABLE EMITE_CUPOM ADD CONSTRAINT FK_EMITE_CUPOM_1 FOREIGN KEY (CLIENTE_CD_CLIENTE) REFERENCES CLIENTE (CD_CLIENTE);
ALTER TABLE EMITE_CUPOM ADD CONSTRAINT FK_EMITE_CUPOM_2 FOREIGN KEY (VENDA_CD_VENDA) REFERENCES VENDA (CD_VENDA);
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_1 FOREIGN KEY (CARGOS_CD_CARGOS) REFERENCES CARGOS (CD_CARGOS);
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_2 FOREIGN KEY (EMPRESA_CD_EMPRESA) REFERENCES EMPRESA (CD_EMPRESA);
ALTER TABLE ITEM_VENDAS ADD CONSTRAINT FK_ITEM_VENDAS_1 FOREIGN KEY (VENDA_CD_VENDA) REFERENCES VENDA (CD_VENDA);
ALTER TABLE ITEM_VENDAS ADD CONSTRAINT FK_ITEM_VENDAS_2 FOREIGN KEY (PRODUTO_CD_PRODUTO) REFERENCES PRODUTO (CD_PRODUTO);
ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_1 FOREIGN KEY (FORNECEDOR_CD_FORNECEDOR) REFERENCES FORNECEDOR (CD_FORNECEDOR);
ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_2 FOREIGN KEY (FUNCIONARIO_CD_FUNCIONARIO) REFERENCES FUNCIONARIO (CD_FUNCIONARIO);
ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_SORTEIO_2 FOREIGN KEY (FUNCIONARIO_CD_FUNCIONARIO) REFERENCES FUNCIONARIO (CD_FUNCIONARIO);
ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_SORTEIO_3 FOREIGN KEY (CLIENTE_CD_CLIENTE) REFERENCES CLIENTE (CD_CLIENTE);

/******************************************************************************/
/***                           Check constraints                            ***/
/******************************************************************************/



/******************************************************************************/
/***                                Indices                                 ***/
/******************************************************************************/



/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/

SET TERM ^ ;

SET TERM ; ^

/******************************************************************************/
/***                               Procedures                               ***/
/******************************************************************************/

SET TERM ^ ;

SET TERM ; ^



/******************************************************************************/
/***                          Object descriptions                           ***/
/******************************************************************************/

