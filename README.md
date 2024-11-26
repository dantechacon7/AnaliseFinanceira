### Projeto de conclusão de curso da EBAC: SQL para análise de dados

# Qual o problema tratado?
Foi utilizado como apoio um dataset fictício com informações abertas de crédito. A partir desse dataset, foram investigados padrões de comportamento entre clientes de uma instituição financeira fictícia. No dataset, é possível identificar as seguintes colunas com informações:

idade = idade do cliente;sexo = sexo do cliente (F ou M); 

dependentes = número de dependentes do cliente; escolaridade = nível de escolaridade do clientes; 

salario_anual = faixa salarial do cliente; tipo_cartao = tipo de cartao do cliente; 

qtd_produtos = quantidade de produtos comprados nos últimos 12 meses; 

iteracoes_12m = quantidade de iterações/transacoes nos ultimos 12 meses; 

meses_inativo_12m = quantidade de meses que o cliente ficou inativo; 

limite_credito = limite de credito do cliente; 

valor_transacoes_12m = valor das transações dos ultimos 12 meses; 

qtd_transacoes_12m = quantidade de transacoes dos ultimos 12 meses

# Quais as principais conclusões da análise realizada?
1. a maior parte dos clientes possui renda até 40K
2. a maior parte dos clientes é do sexo masculino!
3. a escolaridade não parece influenciar no limite nem no tipo do cartão. é possível verificar pessoas de baixa escolaridade com os maiores limites do dataset, assim como encontramos pessoas com doutorado e baixíssimo limite.
4. os clientes com maiores limites são em sua maioria do sexo masculino.
5. os clientes com menores limites são em sua maioria do sexo feminino.
6. dentre os menores limites não há presença de cartão platinum.
7. a faixa salarial impacta diretamente no limite de crédito, apresentando uma relação diretamente proporcional: quanto maior o salário, maior o limite.
8. nao existem clientes com salário anual acima de 60K do sexo feminino, o que se reflete no comportamento de crédito nesse público.
9. Uma exploração maior dos dados pode explicar porque as pessoas do sexo feminino possuem menos crédito.

# Quais os principais outputs das conclusões?
1. Numa realidade de low income, a oferta de limite deve estar diretamente associada ao poder de compra e tendência à adimplência. Sendo assim, a tendência de crescimento de limite médio dessa base de clientes deve acompanhar o aumento de salário médio desses clientes. Em caso de instituições de serviços financeiros, a oferta de produtos de investimento pode se tornar fundamental aliada no crescimento do salário médio dessa base.
2. Apesar da base possuir menos clientes do sexo feminino, essas pessoas possuem os maiores limites dentre os clientes de ambos os sexos, o que concede oportunidades de explorar esse público e aumentá-lo com o objetivo de aumentar não somente a base, mas o índice de gastos e uso de crédito da base de clientes.
3. A presença de pessoas com cartões mais simples e limites altíssimos nos revela possibilidade de ofertar cartões melhores com benefícios melhores e, por conseguinte, possibilidade de aumentar ainda mais o gasto médio mensal dessas pessoas.
