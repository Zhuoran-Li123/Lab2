# add an example
#install package from the repository "BoxplotPackage"
devtools::install_github("Zhuoran-Li123/Lab2", force = TRUE)
# load the 'BoxplotPackage' package
library(lab2)
# load the dataset "DRG_data" from the 'BoxplotPackage' package
library(readr)
DRG_data <- read_csv("data/DRG_data.csv")
# create a boxplot by boxplot_payment function
boxplot_payment(DRG_data, 'Average Covered Charges')
# create a calculates statistics over all of the DRG codes for average Medicare payments
statistics_payment("Average Medicare Payments", DRG_data, "mean")
