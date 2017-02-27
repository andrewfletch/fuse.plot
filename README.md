###fuse.plot

##Description

fuse.plot is a simple function used to fuse two distance matrices.  It takes no arguments, and walks a user through the steps.

##Usage

*** If you have not used fuse.plot before execute the following code...
        
        install.packages("analogue")

Then, every time a new R session is initiated use...

        library(analogue)

After the 'analogue' package has been loaded, use the the code below to initiate fuse.plot...

        source(file.choose())
        
Locate and select 'fuseplot.R' then use...
        
        fuse.plot()

The generated plot has no title. One can be created using...

        plot(fused_data, main = "YOUR TITLE HERE")

Further changes can be made by using plot(). Search for the plot help menu with...

        ?plot

##Arguments

None

##Details

fuse.plot can only be used with square distance matrices saved as .csv files.  It depends on the 'analogues' package which must be loaded into the library prior to use.

##Value

fuse.plot returns a dendogram plot with no title.  It also caches the 'hclust' object "fused_data" to be used and modified in additional plots.