# Set WD !!


pollutantmean <- function(directory, pollutant, id){
        file_list <- list.files(directory, full.names = TRUE)
        df <- do.call(rbind, lapply(file_list, read.csv, header = TRUE))
        subdf <- subset(df, ID %in% c(id))
        pollmean <- mean(subdf[[pollutant]], na.rm = TRUE)
        pollmean
}

# est il possible de créer la df uniquement si  elle n'existe pas déjà afin de gagner du temps ?


pollutantmean("specdata", "nitrate", c(2, 5))
