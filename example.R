# add an example
#install package from the repository "BoxplotPackage"
devtools::install_github("Zhuoran-Li123/BoxplotPackage", force = TRUE)
# load the 'BoxplotPackage' package
library(BoxplotPackage)
# load the dataset "DRG_data" from the 'BoxplotPackage' package
library(readr)
DRG_data <- read_csv("data/DRG_data.csv")
# create a boxplot by boxplot_payment function
boxplot_payment(DRG_data, 'Average Covered Charges')
