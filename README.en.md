# Graph Analysis in R
All analyses were performed in R [\[1\]](#r) within the RStudio environment [\[2\]](#rstudio).  

## Packages
Remember to first install the required packages via `install.packages("package")`. You will need:  
EGAnet [\[3\]](#ega), readxl [\[4\]](#readxl), ggplot2 [\[5\]](#ggplot2), dplyr [\[6\]](#dplyr), qgraph [\[7\]](#qgraph), tidyverse [\[8\]](#tidyverse), psychTools [\[9\]](#psychtools), igraph [\[10\]](#igraph), and networktools [\[11\]](#networktools).  
If you cannot (or do not want to) install all of them, only EGAnet, readxl, tidyverse, and dplyr are essential.  

## Importing the Data
At the start, you must include the path to the file that will be analyzed in the object `dados`. Remember to close the file before running this line. Also, the code expects an `.xlsx` file with the first row containing column headers.  

## Normalization
Normalization is performed using a z-score (mean = 0 and standard deviation = 1). Thus, if this does not meet your needs, you will need to change the type of normalization (either by using a simple custom function that applies the normalization formula or by using another package).  

## Unique Variable Analysis (UVA)
Applying UVA helps reduce the unidimensionality of your dataset, making the graph more interpretable and meaningful. However, depending on the **n** of your dataset, it can drastically reduce the number of nodes in your network. Therefore, if possible, perform this check using other methods.  

## Exploratory Graph Analysis (EGA)
The Exploratory Graph Analysis package allows you to select various parameters to build the graph—such as the type of correlation, models, clustering, and more. Adjust these parameters so that they make sense for your dataset.  

# References
<a id="r"></a>
[1] R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.  

<a id="rstudio"></a>
[2] Posit team (2025). RStudio: Integrated Development Environment for R. Posit Software, PBC, Boston, MA. URL http://www.posit.co/.  

<a id="ega"></a>
[3] Golino, H., & Christensen, A. P. (2025). EGAnet: Exploratory Graph Analysis – A framework for estimating the number of dimensions in multivariate data using network psychometrics. https://doi.org/10.32614/CRAN.package.EGAnet  

<a id="readxl"></a>
[4] Wickham H, Bryan J (2025). readxl: Read Excel Files. R package version 1.4.5, https://github.com/tidyverse/readxl, https://readxl.tidyverse.org.  

<a id="ggplot2"></a>
[5] Wickham H (2016). ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York. ISBN 978-3-319-24277-4, https://ggplot2.tidyverse.org.  

<a id="dplyr"></a>
[6] Wickham H, François R, Henry L, Müller K, Vaughan D (2023). dplyr: A Grammar of Data Manipulation. R package version 1.1.4, https://github.com/tidyverse/dplyr, https://dplyr.tidyverse.org.  

<a id="qgraph"></a>
[7] Epskamp S, Cramer AOJ, Waldorp LJ, Schmittmann VD, Borsboom D (2012). “qgraph: Network Visualizations of Relationships in Psychometric Data.” Journal of Statistical Software, 48(4), 1–18.  

<a id="tidyverse"></a>
[8] Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R, Grolemund G, Hayes A, Henry L, Hester J, Kuhn M, Pedersen TL, Miller E, Bache SM, Müller K, Ooms J, Robinson D, Seidel DP, Spinu V, Takahashi K, Vaughan D, Wilke C, Woo K, Yutani H (2019). “Welcome to the tidyverse.” Journal of Open Source Software, 4(43), 1686. doi:10.21105/joss.01686.  

<a id="psychtools"></a>
[9] William Revelle (2025). psychTools: Tools to Accompany the 'psych' Package for Psychological Research. Northwestern University, Evanston, Illinois. R package version 2.5.3, https://CRAN.R-project.org/package=psychTools.  

<a id="igraph"></a>
[10] Csárdi G, Nepusz T, Traag V, Horvát S, Zanini F, Noom D, Müller K (2025). igraph: Network Analysis and Visualization in R. doi:10.5281/zenodo.7682609, R package version 2.1.4, https://CRAN.R-project.org/package=igraph.  

<a id="networktools"></a>
[11] Van Eck, N.J., & Waltman, L. (2014). CitNetExplorer: A new software tool for analyzing and visualizing citation networks. Journal of Informetrics, 8(4), 802-823.  
