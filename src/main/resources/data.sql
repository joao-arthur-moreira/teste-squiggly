DROP TABLE IF EXISTS produto;
DROP TABLE IF EXISTS categoria;
DROP TABLE IF EXISTS fornecedor;
 
CREATE TABLE categoria (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  ativo boolean
);

CREATE TABLE fornecedor (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  ativo boolean
);

CREATE TABLE produto (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  nome_nota_fiscal VARCHAR(50),
  cfop VARCHAR(10),
  
  preco_custo decimal(8,2),
  preco_venda decimal(8,2),
  preco_venda_atacado decimal(8,2),
  
  id_categoria int,
  id_fornecedor int,
  
  ativo boolean
);
 
INSERT INTO categoria (nome, ativo) VALUES
  ('Refrigerante', true);
  
INSERT INTO fornecedor (nome, ativo) VALUES
  ('Norsa Refrigerantes', true);  
  
INSERT INTO produto (nome, nome_nota_fiscal, cfop, preco_custo, preco_venda, preco_venda_atacado, id_categoria, id_fornecedor, ativo) VALUES
  ('Coca-Cola', 'Refrigerante Coca-Cola', '5909', 10, 20, 9, 1, 1, true);  
  
  
  
  