########################################
#####     VARIÁVEIS/CONFIGS       ######
########################################

# Local onde o projeto foi salvo no seu computador
project_root_path <- getwd()

# Encoding genérico para renderizações
encoding <- "UTF-8"

# Carregando pacotes
pkgs <- list()
pkgs$cran <- c(
  "bookdown",
  "broom",
  "caret", # métricas de ML
  "devtools",
  "dplyr",
  "DT",
  "ggplot2",
  "highcharter",
  "neuralnet",
  "ranger",
  "readr", # leitura de arquivos
  "rpart",
  "rpart.plot",
  "pROC",
  "xtable"
)

pkgs$others <- c(
  #"ggbiplot"#,
  #"prettydoc"
)

# First time, install packages
# lapply(pkgs$cran, install.packages, character.only = TRUE)
# lapply(pkgs$others, install.packages, character.only = TRUE)

lapply(pkgs$cran, require, character.only = TRUE)
lapply(pkgs$others, require, character.only = TRUE)

  
###
## COMPILAR APOSTILA
#######
analysis_name <- "apostila"

# Gerar relatório da apostila
rmarkdown::render(
  input = 
    paste0(project_root_path,"/", analysis_name,".Rmd"), 
  encoding = encoding, clean = T,
  output_file =
    paste0(project_root_path,"/", analysis_name,".html"))


# Datasets de exemplo:
# https://medium.com/towards-artificial-intelligence/best-datasets-for-machine-learning-data-science-computer-vision-nlp-ai-c9541058cf4f
# Wine - Y = qualidade - https://archive.ics.uci.edu/ml/datasets/wine+quality
# Crimes per capita - https://www.cs.toronto.edu/~delve/data/boston/bostonDetail.html
# Fake news - https://www.kaggle.com/c/fake-news/data?select=train.csv
# Diversos - https://archive.ics.uci.edu/ml/index.php
