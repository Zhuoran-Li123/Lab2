#' Boxplot of payments
#'
#' This function creates a boxplot for different kinds of average medicare payments by DRG_data.
#'
#' @param data A data frame "DRG_data. csv"
#' @param x Three average medicare payments to plot: 'Average Medicare Payments', 'Average Total Payments', and 'Average Covered Charges'
#'
#' @return A boxplot for different kinds of payments by DRG_data.
#' @export
#'
#' @examples
#'boxplot_payment(DRG_data, 'Average Covered Charges')
#'
boxplot_payment <- function(data, x) {
  # Determine the payments based on the selected columns
  if (x == 'Average Medicare Payments') {
    y <- data$`Average Medicare Payments`
  } else if (x == 'Average Total Payments') {
    y <- data$`Average Total Payments`
  } else if (x == 'Average Covered Charges') {
    y <- data$`Average Covered Charges`
  } else {
    # Stop and display an error message for an invalid payment
    stop("Invalid payment type. Use 'Average Medicare Payments', 'Average Total Payments', or 'Average Covered Charges'.")
  }
  DRG_data$`DRG Definition` <- substring(DRG_data$`DRG Definition`, 1, 3)
  
  # Create a boxplot for the selected payment
  boxplot(y~DRG_data$`DRG Definition`, main = paste("Boxplot of", x), xlab = "DRG_code", ylab = "Average Medicial Payment", col = "lightblue",ylim = c(0, max(y, na.rm = TRUE)),las = 2)
}


#' Statistics for average Medicare payments
#'
#'This function produce a calculates statistics over all of the DRG codes for average Medicare payments.
#' @param variable_name a variable name
#' @param data a data frame
#' @param stat_type the type of statistics
#'
#' @return Statistics over all of the DRG codes for average Medicare payments.
#' @export
#'
#' @examples
#' statistics_payment("Average Medicare Payments", DRG_data, "mean")
statistics_payment <- function(variable_name, data, stat_type) {
  # Select appropriate statistic based on input
  if (stat_type == "mean") {
    return(round(mean(data[[variable_name]], na.rm = TRUE), 3))
    colnames("mean")
  } 
  else if (stat_type == "median") {
    return(round(median(data[[variable_name]], na.rm = TRUE), 3))
  } 
  else if (stat_type == "sd") {
    return(round(sd(data[[variable_name]], na.rm = TRUE), 3))
  } 
}
