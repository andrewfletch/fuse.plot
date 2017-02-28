if(library(analogue, logical.return = TRUE)==FALSE) {
        message("")
        message("Welcome to fuse.plot!")
        message("")
        message("fuse.plot has user-friendly features that can unfortunately cause instability. ")
        message("If you are promted to select a file and a browser window does not appear, ")
        message("first check the taskbar to see if a file browser opened in the background. ")
        message("If not, please restart R and try fuse.plot again.")
        message("")
        readline("Press [enter] to continue ...")
        message("")      
        message("R is about to install a dependent package.")
        message("")
        readline("Press [enter] to initiate download ...")
        install.packages("analogue")
        message("")
        message("Download complete!")
        message("Please restart R and load fuse.plot one more time.")
        message("")
        readline("You can now restart R.")
        

} else {
        message("")
        message("Welcome back!")
        message("")
        library(analogue)
        message("")
        readline("Dependencies are loaded. Press [enter] to continue ...")
        message("")
        message("Type fuse.plot() to get started.")
        message("")
}


fuse.plot <- function() {
  
        message("")
        message("Press [enter] to select the first distance matrix.")
        message("Note: Only csv files will work with 'fuse.plot'.")
        message("")
        readline("Press [enter] to select a file ...")
        message("")
        mat1 <- read.csv(file.choose(), head = TRUE, sep = ",")
        
        
        message("Press [enter] to select the second distance matrix.")
        message("Note: The matrices must have equal dimensions!")
        message("")
        readline("Press [enter] to select file ...")
        message("")
        mat2 <- read.csv(file.choose(), head = TRUE, sep = ",")
        message("Both matrices have been successfully loaded into 'fuse.plot'.")
        message("")
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
        message("The fused matrix can now be retrieved as 'fused_data'.")
        message("")
}
