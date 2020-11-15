cran_pkgs <- c("remotes", "future", "dplyr", "tidyr", "magrittr",
               "data.table", "forecastHybrid", "rmarkdown", "here", "stringr",
               "ggplot2", "sf", "distill", "rnaturalearth", "kableExtra", "geobr")

github_pkgs <- c("epiforecasts/EpiNow", "epiforecasts/NCoVUtils")

install.packages(cran_pkgs)

remotes::install_github(github_pkgs)

