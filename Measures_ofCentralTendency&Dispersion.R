# Measures of Central Tendency and Dispersion
## Mean
x<-c(4, 8, 6, 5, 3, 9, 7, 2, 8, 6)
  mean(x)
  
  # Mean one value missing 
  x <- c(10, 20, 30, NA, 40)
  mean(x, na.rm = TRUE)
  
## Median  
  x<-c(4, 8, 6, 5, 3, 9, 7, 2, 8, 6)
  median(x)

  #Mode
  x <- c(10, 20, 20, 30, 40, 20, 50)
  max(table(x))
  names(table(x))[table(x) == max(table(x))]
  
 #
  x <- c(10, 20, 20, 30, 40, 20, 50)
  freq <- table(x)
  names(freq)[which.max(freq)]  
 
  #
  x <- c(10, 20, 20, 30, 40, 20, 50)
  get_mode <- function(v){
    uniq_v <- unique(v)
    uniq_v[which.max(tabulate(match(v, uniq_v)))]
    }
  get_mode(x)
  #
  x <- c(10, 20, 20, 30, 40, 20, 50)
  mode_value <- names(table(x))[table(x) == max(table(x))]
  mode_value

  #Range
  x <- c(10, 20, 30, 40, 50)
  max(x) - min(x)  

  x <- c(10, 20, 30, 40, 50)
  range(x)
  diff(range(x))
  
 #Quartile Deviation 
  x <- c(10, 20, 30, 40, 50, 60, 70)
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  QD <- (Q3 - Q1) / 2
  QD
  
  #Interquartile Range 
  x <- c(10, 20, 30, 40, 50, 60, 70)
  IQR(x)
  
  #Mean Devation
  x <- c(10, 20, 30, 40, 50)
  mean_x <- mean(x)
  MD <- mean(abs(x - mean_x))
  MD

  #Mean Devation about Median 
  x <- c(10, 20, 30, 40, 50)
  med <- median(x)
  MD <- mean(abs(x - med))
  MD

  #OR
  x <- c(10, 20, 30, 40, 50)
  MD <- mean(abs(x - median(x)))
  MD

  # Variance
  x <- c(10, 20, 30, 40, 50) #for sample variance 
  var(x)
  
  x <- c(10, 20, 30, 40, 50) #for population variance
  n <- length(x)
  pop_var <- var(x) * (n-1)/n
  pop_var
  
  #Standard Deviation
  x <- c(10, 20, 30, 40, 50)
  sd(x)

  #Coefficient of variation
  x <- c(10, 20, 30, 40, 50)
  CV <- (sd(x) / mean(x)) * 100
  CV

 #SUMMARY 
  summary_stats <- function(v) {
    cat("Mean:", mean(v), "\n")
    cat("Median:", median(v), "\n")
    cat("Mode:", get_mode(v), "\n")
    cat("Range:", max(v) - min(v), "\n")
    cat("Variance (sample):", var(v), "\n")
    cat("SD (sample):", sd(v), "\n")
    cat("CV %:", (sd(v)/mean(v))*100, "\n")
  }
  summary_stats(x)
  