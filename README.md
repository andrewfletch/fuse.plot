##fuse.plot

###Description

fuse.plot is a simple function used to fuse two distance matrices.  It takes no arguments, and walks a user through each step.

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