packages_have <- installed.packages()
packages_req <- c(
    "did",
    "dplyr",
    "fixest",
    "bacondecomp",
    "ggplot2",
    "here",
    "haven",
    "remotes")
packages_need <- packages_req[!(packages_req %in% packages_have[, "Package"])]
install.packages(packages_need)
Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS" = "true")
remotes::install_github("asheshrambachan/HonestDiD")
