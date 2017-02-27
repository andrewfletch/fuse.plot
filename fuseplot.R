install.packages("analogue") #run once

library(analogue) #Run every time you start a new session in R and fuse.plot is required.

fuse.plot <- function() {
        
        message("Welcome to 'fuse.plot'. Please follow the directions as you are prompted.")
        readline("Press [enter] to continue ...")
        message("Select the first distance matrix.")
        message("Note: Only csv files will work with 'fuse.plot'.")
        readline("Press [enter] to continue ...")
        mat1 <- read.csv(file.choose(), head = TRUE, sep = ",")
        
        
        message("Select the second distance matrix.")
        message("Note: Only csv files will work with 'fuse.plot'.")
        readline("Press [enter] to continue ...")
        mat2 <- read.csv(file.choose(), head = TRUE, sep = ",")
        message("Both matrices have been successfully loaded into 'fuse.plot'.")
        readline("Press [enter] to continue ...")
        
        names1 <- names(mat1)[-1]
        
        mat1_m <- as.matrix(mat1[, -1])
        mat2_m <- as.matrix(mat2[, -1])
        fused <- fuse(mat1_m, mat2_m)
        
        fused_data <<- hclust(fused, method = "average")
        plot(fused_data, labels = names1, main = NA)
        
        message("")
        message("Plot complete!")
        message("")
        message("To add a title to the plot use the following code...")
        message(paste("plot(fused_data, main = ", '"',"YOUR TITLE HERE",'"', ")", sep = ""))
        message("")
        message("For further informtation regarding plot modifications use ?plot")
}
