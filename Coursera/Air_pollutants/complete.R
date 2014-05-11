complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
}


complete_df <- df[complete.cases(df), ]

by(df, df$ID, nrow)

require(dplyr)



resultdf <- complete_df %.%
        group_by(ID) %.%
        summarise(nobs = length(nitrate))
        
        
# Donne le bon résultat, il faut juste subset ensuite 
rowdf <- ddply(complete_df, "ID", summarise,
                  nobs = length(nitrate))
resultdf <- subset(rowdf, ID %in% c(30:25))
# il faut changer le titre de ID à id et trouver comment faire pour que le 
# résultat soit ordonné dans l'ordre du vecteur id et pas forcément dans l'ordre croissant
resultdf
