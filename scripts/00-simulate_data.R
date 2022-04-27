# We will simulate data that we might find in the dataset used in 
#the ‘Ambient particulate air pollution and daily stock market returns and volatility in 47 cities worldwide'

#set seed  
set.seed(100270)

number_of_observations <- 47759

#simulate the data
simulated_data <- 
  tibble(pm25 = sample(x = c(0:904),
                            size = size_of_population,
                            replace = TRUE
  ),
  log_ret = rnorm(size_of_population, mean = 0, sd = 1),
  lag1_rent = rnorm(size_of_population, mean = 0, sd = 1),
  lag2_rent = rnorm(size_of_population, mean = 0, sd = 1),
  RH = sample(x = c(0:100),
                size = size_of_population,
                replace = TRUE
  
  ),
  TEMP = sample(x = c(0:40),
                size = size_of_population,
                replace = TRUE
  ),
  SLP = sample(x = c(958:1052),
                size = size_of_population,
                replace = TRUE
  ),
  VISIB = sample(x = c(0:10),
                size = size_of_population,
                replace = TRUE
  ),
  WDSP = sample(x = c(0:10),
                size = size_of_population,
                replace = TRUE
  ),
  woy = sample(x = c(0:100),
                    size = size_of_population,
                    replace = TRUE
  ),
)
  


# print the simulated data
simulated_data
