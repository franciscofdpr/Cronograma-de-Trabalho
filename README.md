
# README - Projeto Cronograma Data Lake

Este projeto gera um gráfico Gantt para visualizar o cronograma de um projeto especifico.

## Requisitos

Certifique-se de ter os seguintes pacotes R instalados:
- `remotes`
- `ganttrify`
- `openxlsx`
- `ggplot2`

## Instalação

1. Instale o pacote `remotes`:
   ```R
   install.packages("remotes")
   ```

2. Instale o pacote `ganttrify` a partir do GitHub:
   ```R
   remotes::install_github("giocomai/ganttrify")
   ```

3. Instale os pacotes `openxlsx` e `ggplot2`:
   ```R
   install.packages("openxlsx")
   install.packages("ggplot2")
   ```

## Carregando os Pacotes

Certifique-se de carregar os pacotes necessários antes de executar o script:

```R
library("ganttrify")
library("openxlsx")
library("ggplot2")
```

## Lendo a Base de Dados

Leia a base de dados a partir de um arquivo Excel. Substitua o caminho do arquivo pelo caminho correto no seu sistema.

```R
bd <- read.xlsx("C:\\Users\\franc\\OneDrive\\Área de Trabalho\\Francisco\\Data Lake\\Projeto\\Cronograma\\Cronograma.xlsx", sheet = 1)
```

## Gerando o Gráfico Gantt

Gere e salve o gráfico Gantt como um arquivo TIFF. Substitua o caminho do arquivo pelo caminho correto no seu sistema.

```R
tiff("C:\\Users\\franc\\OneDrive\\Área de Trabalho\\Francisco\\Data Lake\\Projeto\\Cronograma\\Cronograma.png", units = "in", width = 15.0, height = 9.0, res = 300)
ganttrify(project = bd,
          project_start_date = "2021-11",
          size_text_relative = 1.1,
          axis_text_align = "right",
          spots = bd,
          font_family = "Roboto Condensed") +
ggplot2::labs(title = "Cronograma Data Lake 2021-2023",
              subtitle = "Brandt Meio Ambiente",
              caption = "* A = Aguardando Data, C = Concluido, E = Em Andamento, I = A Iniciar")
dev.off()
```

## Autor

Francisco de Paula Ribeiro
---
