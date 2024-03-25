#variable assignment
first_var <- "this is my variable"
second_var <- 12.5
vec_1 <- c(12.5, 20.0, .01, second_var)
vec_int <- c(1L, 5L, 10L)
#note the L next to each int 
vec_string <- c("i", "am", "stroring", "strings")
vec_bool <- c(TRUE, FALSE, FALSE)
typeof(vec_1)
#gives type stored
length(vec_1)
#gives length of vec
is.logical(vec_1)
#gives true if it is the type after the dot, false otherwise
#naming vars / dict
vec_vals <- c(1, 2, 3)
names(vec_vals) <- c("a", "b", "c")
list_example <- list("temp", 1.6, 4L, TRUE)
#lists can store values of different types
str(list_example)
#gives type with each val
z <- list(list(list(1 , 3, 5)))
str(z)
#dots represent nesting level
z2 <- list('chicago' = 1, 'new york' = 2, 'los angeles' = 3)
#naming of lists ^
chicago