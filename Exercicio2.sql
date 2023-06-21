create table tb_pizza (
nome_pizza varchar(50) not null,
descricao varchar(255) not null,
preco decimal(8,2) not null,
id_categoria int,
id_pizza int primary key auto_increment,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, descricao, preco, id_categoria) VALUES
    ('Margherita', 'Molho de tomate, muçarela, manjericão', 40.00, 1),
    ('Quatro Queijos', 'Muçarela, gorgonzola, catupiry, parmesão', 50.00, 1),
    ('Brigadeiro', 'Leite condensado, chocolate granulado', 35.00, 2),
    ('Vegetariana', 'Muçarela, tomate, cebola, pimentão, cogumelos', 45.00, 3),
    ('Frango com Catupiry', 'Muçarela, frango desfiado, catupiry', 55.00, 4),
    ('Portuguesa', 'Presunto, muçarela, ovo, cebola, azeitona', 40.00, 1);
    
    SELECT*FROM tb_pizzas WHERE preco > 45.00;
    SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria
