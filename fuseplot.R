
message("Welcome to fuse.plot! ")
message("")
message("Type fuse.plot() to get started.") 


fuse.plot <- function() {
  
        if(library(analogue, logical.return = TRUE)==TRUE) {
                library(analogue)
          
        } else {
                install.packages("analogue")
                library(analogue)
          
        }
  
        message("")
        message("Please follow the directions as you are prompted.")
        readline("Press [enter] to continue ...")
        message("")
        message("Select the first distance matrix.")
        message("Note: Only csv files will work with 'fuse.plot'.")
        readline("Press [enter] to continue ...")
        message("")
        mat1 <- read.csv(file.choose(), head = TRUE, sep = ",")
        
        
        message("Select the second distance matrix.")
        message("Note: Only csv files will work with 'fuse.plot'.")
        readline("Press [enter] to continue ...")
        message("")
        mat2 <- read.csv(file.choose(), head = TRUE, sep = ",")
        message("Both matrices have been successfully loaded into 'fuse.plot'.")
        readline("Press [enter] to continue ...")
        message("")
        
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
