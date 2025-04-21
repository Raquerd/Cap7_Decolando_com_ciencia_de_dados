#DaviFerreira_RM562274_fase2_cap7
#LaísKurahashi_RM562155_fase2_cap7
#LucasMartinelli_RM563588_fase2_cap7

library(readxl)
df <- read_excel("C:/Users/laisk/Desktop/Trabalhos_fase2/base_de_dados_pecuaria_r/base_de_dados_pecuaria.xlsx")
print(df)

# ANALISE EXPLORATORIA - qtd animais

## Medidas de tendencia central
# Média
mean(df$`Qtde de Animais`, na.rm = TRUE)

# Mediana
median(df$`Qtde de Animais`, na.rm = TRUE)

# Moda
table(df$`Qtde de Animais`) 

## Medidas de dispersao
# Desvio Padrão
sd(df$`Qtde de Animais`, na.rm = TRUE)

# Variancia
var(df$`Qtde de Animais`, na.rm = TRUE)

## Medidas separatrizes
# Quartis
quantile(df$`Qtde de Animais`, na.rm = TRUE)

## Grafico
hist(df$`Qtde de Animais`, 
     main = "Distribuição de Quantidade de Animais", 
     xlab = "Quantidade de Animais", 
     ylab = "Número de Fazendas",  # Mudamos para "Número de Fazendas"
     col = "lightblue", 
     border = "black", 
     )

# ANALISE GRAFICA - qualitativa
library("ggplot2")

ggplot(df, aes(x = `Estado`)) +
  geom_bar(fill = "lightgreen", color = "black") +
  labs(title = "Distribuição de Fazendas por Estado",
       x = "Estado", 
       y = "Número de Fazendas")




