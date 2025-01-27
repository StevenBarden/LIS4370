# ====================================================================
# Assignment  : Module 2 - Introduction to Basic R Functions and Data Structures
# Purpose     : Analyze the custom function and evaluate its behavior.
# Author      : Steven Barden
# Created     : 2025-01-27-0800-00
# Modified    : 2025-01-27-0830-00
# Description : This script evaluates the `myMean` function and demonstrates
#               its application with provided data. Includes detailed comments,
#               error handling, and structure for modular reuse.
# ====================================================================

# --- ENVIRONMENT SETUP ---
# Configure global options for consistent outputs.
options(width = as.integer(system2("tput", "cols", stdout = TRUE)))

# --- WORKING DIRECTORY SETUP ---
tryCatch({
  setwd("C:/Users/Admin/OneDrive/College/2025-USF-Spring/4370/Module02")
  cat("Working directory set to:", getwd(), "\n")
}, error = function(e) {
  stop("Error setting working directory: ", e$message)
})

# --- FUNCTION DEFINITION ---
# Custom function to calculate mean
myMean <- function(data) {
  tryCatch({
    if (!is.numeric(data)) stop("Input data must be numeric.")
    result <- sum(data) / length(data)
    return(result)
  }, error = function(e) {
    stop("Error in myMean function: ", e$message)
  })
}

# --- MAIN ANALYSIS ---
# Data provided for the assignment
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# Analyze the data using the custom function
tryCatch({
  cat("Analyzing data using myMean function...\n")
  mean_result <- myMean(assignment2)
  cat("Mean of the dataset:", mean_result, "\n")
}, error = function(e) {
  stop("Error during data analysis: ", e$message)
})

# --- REFERENCES ---
# References:
# 1. Matloff, N. (2011). *The Art of R Programming*. No Starch Press.
# 2. Wickham, H. (2015). *R Packages*. O?Reilly Media. Chapter 13 on GitHub.

# --- END OF SCRIPT ---
