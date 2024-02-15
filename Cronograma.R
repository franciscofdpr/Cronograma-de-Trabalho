
#### Instalando Pacotes ####
install.packages("remotes")
remotes::install_github("giocomai/ganttrify")
install.packages("openxlsx")
install.packages("ggplot2")

#### Carregando Pacotes ####
library("ganttrify")
library('openxlsx')
library('ggplot2')

#### Lendo a base de dados ####
bd=read.xlsx("C:\\Users\\franc\\OneDrive\\Área de Trabalho\\Francisco\\Data Lake\\Projeto\\Cronograma\\Cronograma.xlsx", sheet =1)

#### Grafico ####
tiff("C:\\Users\\franc\\OneDrive\\Área de Trabalho\\Francisco\\Data Lake\\Projeto\\Cronograma\\Cronograma.png", units="in", width=15.0, height=9.0, res=300)
ganttrify(project = bd,
          project_start_date = "2021-11",
          size_text_relative  =  1.1,
          axis_text_align  =  "right",
          spots  = bd,
          font_family = "Roboto Condensed")+
ggplot2 :: labs (title  =  "Cronograma Data Lake 2021-2023" ,
                  subtitle  =  "Brandt Meio Ambiente",
                  caption  =  "* A = Aguardando Data, C = Concluido, E= Em Andamento, I = A Iniciar")
dev.off()
