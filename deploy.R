if (!require('rsconnect'))install.packages("rsconnect");library(rsconnect)
if (!require('BiocManager'))install.packages("BiocManager");library(BiocManager)

options(
  repos = c(CRAN_mirror = "https://cran.rstudio.com/"),
  BioC_mirror = "https://bioconductor.statistik.tu-dortmund.de/"
)
options(repos = BiocManager::repositories())

rsconnect::setAccountInfo(name=Sys.getenv("NAME"), 
                          token=Sys.getenv("TOKEN"), 
                          secret=Sys.getenv("SECRET"))

deployApp(forceUpdate = TRUE)