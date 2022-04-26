# Custom function: convert.magic
# Function to convert multiple variables to different formats at once
# Created by Bill Petti: https://gist.github.com/BillPetti/c83a471face493466fa3
## This function has been edited with the addition of ordered = as.ordered

convert.magic <- function(obj, type) {
    FUN1 <- switch(type,
        character = as.character,
        numeric = as.numeric,
        factor = as.factor,
        ordered = as.ordered
    )
    out <- lapply(obj, FUN1)
    as.data.frame(out)
}