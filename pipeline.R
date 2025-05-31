library(EGAnet)
library(readxl)
library(ggplot2)
library(dplyr)
library(qgraph)
library(tidyverse)
library(psychTools)
library(igraph)
library(networktools)

dados <- read_excel("caminho")

# Remover dados não numéricos:
dados_limpos <- dados %>%
  mutate_all(~ as.numeric(gsub(",", ".", .)))

# Imputar média em células vazias:
imputar_media <- function(coluna) {
  media <- mean(coluna, na.rm = TRUE)
  ifelse(is.na(coluna), media, coluna)
}
dados_imputados <- dados_limpos %>%
  mutate_all(imputar_media)

# Identificar colunas vazias, onde não foi possível imputar valores
na_counts <- dados_imputados %>%
  summarize_all(~ sum(is.na(.)))
colunas_vazias <- na_counts %>%
  select_if(~ . == nrow(dados_imputados)) %>%
  names()

# Removendo colunas vazias
dados_sem_vazias <- dados_imputados %>%
  select(-all_of(colunas_vazias))

# Normalizando por z-score
dados_normalizados <- dados_sem_vazias %>%
  mutate_if(is.numeric, scale)

# Aplicação do UVA
result_uva <- UVA(
  data = dados_normalizados[,1:22]
)

# EGA
ega_spearman <- EGA(
  data = result_uva$reduced_data,
  corr = "spearman",
  model = "glasso",
  gamma = 0, # Gamma, lambda.min.ratio e nlambda devem ser ajustados conforme a necessidade
  lambda.min.ratio = 1e-11, 
  nlambda = 49,
  algorithm = "leiden",
  plot = TRUE,
  verbose = FALSE,
  returnAllResults = TRUE
)

bic_val <- attr(ega_spearman$network, "methods")$criterion
print(bic_val)

# EGA Pearson
ega_pearson <- EGA(
  data = result_uva$reduced_data,
  corr = "pearson",
  model = "glasso",
  algorithm = "leiden"
)
