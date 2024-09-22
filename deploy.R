if (!require('rsconnect'))install.packages("rsconnect");library(rsconnect)

options(
  repos = c(CRAN_mirror = "https://cran.rstudio.com/"),
  BioC_mirror = "https://bioconductor.statistik.tu-dortmund.de/"
)


rsconnect::setAccountInfo(name=Sys.getenv("NAME"), 
                          token=Sys.getenv("TOKEN"), 
                          secret=Sys.getenv("SECRET"))

deployApp(forceUpdate = TRUE)