corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
}

source(complete)

nobs.df <- complete(directory, 1:325)

subset pour récupérer la liste des ID selon threshold

id <- nobs.df[nobs.df$nobs > 150,]$ID # sachant que normalement, ID devra s'appeler id par la suite

# ou ce qu'il y a dessous, ou ajouter return.datafram(df) dans la fonction complete
file_list <- list.files(directory, full.names = TRUE)
df <- do.call(rbind, lapply(file_list, read.csv, header = TRUE))

sub <- subset(df, ID %in% id)

tapply(sub, "ID", cor.test, sub$nitrate, sub$sulfate)
ddply(sub, "ID", cor.test(sub$nitrate, sub$sulfate))

for()