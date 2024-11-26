--Qual a quantidade de informações que temos na nossa base de dados?
SELECT count(*) FROM credito 
--Resultado: 2653 linhas de resultado.

--Como são os dados?
SELECT * FROM credito LIMIT 10; 
--O que nos traz as dez primeiras linhas do dataset
/*É possível reparar que existem algumas informações nulas na tabela (valor na), vamos olhar mais de perto para os valores de cada coluna!*/


/*Para definir os dados com valores null, devemos buscar dados distintos das colunas do dataset.*/
--Ex.:Quais são os tipos de escolaridade disponíveis no dataset?
SELECT DISTINCT escolaridade FROM credito

--Quais são os tipos de salario_anual disponíveis no dataset?
SELECT DISTINCT salario_anual FROM credito
/*Os salários nesse dataset não estão expostas com o valor exato que o cliente ganha. O que está informado é a faixa salarial de cada um. Também contem dados nulos.*/

--Quais são os tipos de cartão disponíveis no dataset?
SELECT DISTINCT tipo_cartao FROM credito
--Nessa coluna, não há necessidade de tratar valores nulos.

--Análise de dados
/*Uma vez que exploramos o dados e buscamos entender quais são as informações que temos no nosso banco de dados, podemos analisar as informações para buscar entender o que está acontecendo no banco de dados.*/

/*Vamos fazer perguntas: Nesse banco de dados, quantos clientes temos de cada faixa salarial?*/
select count(*), salario_anual from credito group by salario_anual
/*a maioria dos clientes dessa base de dados possui um renda menor que 40K e existem 235 clientes que não informaram ou não consta a faixa salarial. De certa forma, pode ser interessante para a empresa focar nesse público de mais baixa renda.*/

/*Nesse banco de dados, quantos clientes são homens e quantos são mulheres?*/
select count(*), sexo from credito group by sexo
/*A maioria dos clientes desse banco é homem! Do csv extraído dos dados é possível gerar o gráfico em pizza para melhor visualizarmos a proporção de masculino/feminino*/

/*Queremos focar o nosso marketing de maneira adequada para nossos clientes, qual será a idade deles?*/
select avg(idade) as media_idade, min(idade) as min_idade, max(idade) as max_idade, sexo from credito group by sexo Média de idades por sexo
/*Por meio dessa análise não foi possível extrair nenhuma informação relevante. A menor idade dos dois sexos é a mesma e a média é muito similar. A unica diferença é a idade máxima mas fato quase irrelevante por a diferença não é tão gritante.*/

/*Qual a maior e menor transação dos clientes?*/
select min(valor_transacoes_12m) as transacao_minima, max(valor_transacoes_12m) as transacao_minima from credito Valor transacoes
/*Nesse banco de dados temos soma de transações em 12 meses variam de 510.16 a 5776.58*/

/*Quais as características dos clientes que possuem os maiores creditos?*/
select max(limite_credito) as limite_credito, escolaridade, tipo_cartao, sexo from credito where escolaridade <> 'na' and tipo_cartao <> 'na' group by escolaridade, tipo_cartao, sexo order by limite_credito desc limit 10
/*Não parece haver um impacto da escolaridade no limite. O limite mais alto é oferecido para um homem sem educação formal. O cartão também parece não estar relacionado com a escolaridade nem com o limite. Dentre os maiores limites, encontramos clientes com cartão: gold, silver, platinum e blue*/

/*Quais as características dos clientes que possuem os menores creditos?*/
select max(limite_credito) as limite_credito, escolaridade, tipo_cartao, sexo from credito where escolaridade <> 'na' and tipo_cartao <> 'na' group by escolaridade, tipo_cartao, sexo order by limite_credito asc
/*Dessa vez conseguimos perceber que não há clientes com cartão platinum dentre os menores limites. Também foi possível perceber que a maioria dos menores limites são mulheres enquanto nos maiores limites predomina homens.*/

--Será que as mulheres gastam mais?
select max(valor_transacoes_12m) as maior_valor_gasto, avg(valor_transacoes_12m) as media_valor_gasto, min(valor_transacoes_12m) as min_valor_gasto, sexo from credito group by sexo
/*Apesar da diferença nos limites, os gastos de homens e mulheres são similares!*/

--O salário impacta no limite?
select avg(qtd_produtos) as qts_produtos, avg(valor_transacoes_12m) as media_valor_transacoes, avg(limite_credito) as media_limite, sexo, salario_anual from credito where salario_anual != 'na' group by sexo, salario_anual order by avg(valor_transacoes_12m) desc
/*SIM! As pessoas que tem menor faixa salarial também apresentam menor limite de credito!*/
