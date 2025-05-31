# Análise de Grafos em R
Todas as análises foram realizadas em R () [1] no ambiente do RStudio [2].
## Pacotes
Lembre-se de, antes de tudo, instalar os pacotes necessários através de install.packages("pacote"). Você vai precisar de: EGAnet [3], readxl [4], ggplot2 [5], dplyr [6], qgraph [7], tidyverse [8], psychTools [9], igraph [10] e networktools [11]. Caso não consiga (ou queira) instalar todos, apenas o EGAnet, readxl, tidyverse e dplyr serão fundamentais.

## Importando os Dados
Ao iniciar, você deve incluir o caminho para o arquivo que será analisado, no objeto "dados". Lembre-se de fechar o arquivo antes de rodar essa linha. Além disso, o código espera receber um arquivo .xlsx com a primeira linha sendo os títulos das colunas.

## Normalização
A normalização é realizada por z-score, com média = 0 e desvio-padrão = 1. Dessa forma, caso isso não atenda o que você busca realizar, será necessário alterar o tipo de normalização (através de uma função simples criada para atender a fórmula da normalização ou por outros pacotes).

## Unique Variable Analysis (UVA)
A aplicação do UVA ajuda a reduzir a unidimensionalidade do seu conjunto de dados, tornando o grafo mais interpretável e significativo. No entanto, a depender do **n** da sua base de dados, ele pode reduzir de forma extrema a quantidade de nós na sua rede. Dessa forma, caso viável, realize essa verificação utilizando outros métodos.

## Exploratory Graph Analysis (EGA)
O pacote Exploratory Graph Analysis permite selecionar diversos parâmetros para construir o grafo, como o tipo de correlação, modelos, clusterização, dentre outros. Dessa forma, ajuste-os para que faça sentido para seu conjunto de dados.

# Referências
[1] R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.  

[2] Posit team (2025). RStudio: Integrated Development Environment for R. Posit Software, PBC, Boston, MA. URL http://www.posit.co/.  

[3] Golino, H., & Christensen, A. P. (2025). EGAnet: Exploratory Graph Analysis – A framework for estimating the number of dimensions in multivariate data using network psychometrics. https://doi.org/10.32614/CRAN.package.EGAnet  

[4] Wickham H, Bryan J (2025). readxl: Read Excel Files. R package version 1.4.5, https://github.com/tidyverse/readxl, https://readxl.tidyverse.org.  

[5] Wickham H (2016). ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York. ISBN 978-3-319-24277-4, https://ggplot2.tidyverse.org.  

[6] Wickham H, François R, Henry L, Müller K, Vaughan D (2023). dplyr: A Grammar of Data Manipulation. R package version 1.1.4, https://github.com/tidyverse/dplyr, https://dplyr.tidyverse.org.  

[7] Epskamp S, Cramer AOJ, Waldorp LJ, Schmittmann VD, Borsboom D (2012). “qgraph: Network Visualizations of Relationships in Psychometric Data.” Journal of Statistical Software, 48(4), 1–18.  

[8] Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R, Grolemund G, Hayes A, Henry L, Hester J, Kuhn M, Pedersen TL, Miller E, Bache SM, Müller K, Ooms J, Robinson D, Seidel DP, Spinu V, Takahashi K, Vaughan D, Wilke C, Woo K, Yutani H (2019). “Welcome to the tidyverse.” Journal of Open Source Software, 4(43), 1686. doi:10.21105/joss.01686.  

[9] William Revelle (2025). psychTools: Tools to Accompany the 'psych' Package for Psychological Research. Northwestern University, Evanston, Illinois. R package version 2.5.3, https://CRAN.R-project.org/package=psychTools.  

[10] Csárdi G, Nepusz T, Traag V, Horvát S, Zanini F, Noom D, Müller K (2025). igraph: Network Analysis and Visualization in R. doi:10.5281/zenodo.7682609, R package version 2.1.4, https://CRAN.R-project.org/package=igraph.  

[11] Van Eck, N.J., & Waltman, L. (2014). CitNetExplorer: A new software tool for analyzing and visualizing citation networks. Journal of Informetrics, 8(4), 802-823.
