##fuse.plot
###version 1.1.1

###Description

fuse.plot is a simple function used to fuse two distance matrices and plot a dendogram.  It takes no arguments, and walks a user through each step. The secndary function 'fuse.export' walks users through the export of Newick files.


##fuse.plot()
###Usage

Step 1: If you have not used fuse.plot before, you can execute the following code...
        
        install.packages("analogue")

(Note) If step 1 is ignored, fuse.plot will attempt to install dependencies automatically.


Step 2: Use the the code below to initiate fuse.plot...

        source(file.choose())
        
Locate and select 'fuseplot.R'.
        
Step 3: fuse.plot will now guide you step-by-step and will prompt you to execute the following...
        
        fuse.plot()

Step 4: (optional) The generated plot has no title. One can be created using...

        plot(fused_data, main = "YOUR TITLE HERE")

Further changes can be made by using plot(). Search for the plot help menu with...

        ?plot

###Arguments

None

###Details

fuse.plot can only be used with square distance matrices saved as .csv files.  It depends on the 'analogues' package which must be loaded into the library prior to use.

###Value

fuse.plot returns a dendogram plot with no title.  It also caches the 'hclust' object "fused_data" to be used and modified in additional plots.

##fuse.export()
###Usage
Step 1: To change the director where files are saved use...

        setwd("DIRECTORY LOCATION")
        
Step 2: Use the code below to initiate export...

        fuse.export()        

Step 3: Choose the name of the file with...

        export.name("FILE NAME")
        
###Arguments

  file_name     The name given to the Newick file
  
###Details

To avoid complications, please don't uses spaces when choosing a file name.  the extension .tre is added automatically.

###Value

fuse.export writes a file with extension .tre using an object of class "phylo" which is automatically generated when export.name() is executed. These files can be used by phylogenic tree plotting software or within R.
  