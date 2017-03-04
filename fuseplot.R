message("Welcome to fuse.plot v. 1.1.0")
message("")
message("fuse.plot has user-friendly features that can unfortunately cause instability. ")
message("If you are promted to select a file and a browser window does not appear, ")
message("first check the taskbar to see if a file browser opened in the background. ")
message("If not, please restart R and try fuse.plot again.")
message("")
readline("Press [enter] to continue ...")

if(library(analogue, logical.return = TRUE)==FALSE) {
        
        message("")      
        message("R is about to install the dependent package, 'analogue'.")
        message("")
        readline("Press [enter] to initiate download ...")
        install.packages("analogue")
        message("")
        message("Intallation complete!")
        message("Please restart R and load fuse.plot one more time.")
        message("")
        readline("You can now restart R.")
        
} else if(library(phangorn, logical.return = TRUE)==FALSE) {
        message("")      
        message("R is about to install the dependent package, 'phangorn'.")
        message("")
        readline("Press [enter] to initiate download ...")
        install.packages("phangorn")
        message("")
        message("Installation complete!")
        message("Please restart R and load fuse.plot one more time.")
        message("")
        readline("You can now restart R.")
        

} else {
        library(analogue)
        library(phangorn)
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
        
        names1 <<- names(mat1)[-1]
        
        mat1_m <- as.matrix(mat1[, -1])
        mat2_m <- as.matrix(mat2[, -1])
        fused <<- fuse(mat1_m, mat2_m)
        
        fused_data <<- hclust(fused, method = "average")
        plot(fused_data, labels = names1, main = NA)
        
        message("")
        message("Plot complete!")
        message("")
        message("To add a title to the plot use the following code...")
        message(paste("plot(fused_data, main = ", '"',"YOUR TITLE HERE",'"', ")", sep = ""))
        message("NOTE: Quotation marks are required for the title name")
        
        message("")
        message("For further informtation regarding plot modifications use ?plot")
        message("The fused matrix can now be retrieved as 'fused_data', and labels as 'names1.")
        message("")
        readline("Press [enter] to continue")
        message("")
        message("If you would like to export a Newick file for this data, type ...")
        message("")
        message("fuse.export()")
        message("")
        
        
}


fuse.export <- function() {
        
        message("")
        message("Your default save directory is...")
        print(getwd())
        message("")
        message("If you would like to change this location use...")
        message(paste("setwd(", '"', "DIRECTORY PATH", '"', ")", sep = ""))
        message("NOTE: Quotation marks are required for the path name")
        message("")
        readline("Press [enter] to continue ...")
        message("")
        message(paste("To commence export use export.name(", '"', "CHOOSE FILE NAME", '"', ")", sep = ""))
        message("NOTE: Quotation marks are required for the file name")
        message("")
        
        export.name <<- function(file_name = "Newick_data") {
                fuse_UPGMA <<- upgma(fused)
                write.tree(fuse_UPGMA, file = paste(file_name, ".tre", sep = ""))
                message("")
                message("Export complete!")
                message("")
                message("File is located in...")
                getwd()
                
        }
        
}

