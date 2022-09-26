# Custom function: addline_format
# Function to add a line break
# Created by XX

addline_format <- function(x, ...) { # add line breaks
    gsub(",", "\n", x)
}