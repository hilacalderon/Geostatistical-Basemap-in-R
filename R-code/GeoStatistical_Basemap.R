#########################################################################
#####      BASEMAP  CREATION FOR GEO-STATISTICAL ANALYSIS
####                                                  
####               Working with Shapefiles              
#########################################################################

####  Dr. Hilario Calderon
####  2016/01/28


####  Install and load necessary packages (libraries _ Tools of the trade)

# a 

install.package("akima")  

# map serie

install.package("maptools")     	# tools for reading and handling spatial objects
install.package("mapdata")      	# contains basic data to go along with 'maps' ("topographic and geologic")
install.package("maps")         	# for creating geographical maps
install.package("mapproj")      	# for creating projected maps
install.package("mapplots")       # data visualization on maps
install.package("RgoogleMaps")    # overlays on Google map tiles in R


# g

# gpclibPermit("")      	# allow general polygon clipping install.package for R - install.package("gpclib")
install.package("ggmap")          # a package for spatial visualization with Google Maps and OpenStreetMap
install.package("GEOmap")         # topographic and geologic mapping
install.package("geoR")           # A nalysis of Geostatistical data
install.package("gstat")          # geospatial and spatio temporal geostatistical modelling, prediction and simulations
install.package("gridExtra")      # Miscellaneous Functions for "Grid" Graphics
# l

install.package("lattice")        # trellis Graphics for R

# r

install.package("raster")       	# tools to deal with raster maps
install.package("rgeos")        	# interface to geometry engine - open source ("GEOS")
install.package("rgdal")        	# bindings for the geospatial data abstraction install.package
install.package("RSAGA")

# s

install.package("scales")         # for transparency
install.package("sp")           	# classes and methods for spatial data
install.package("sfsmisc")      	# utilities from Seminar fuerStatistik ETH Zurich
install.package("spatstat")
install.package("shapefiles")   # read and write ESRI shapefiles

# p

install.package("plotrix")        # various plotting functions 
install.package("plotGoogleMaps") # plot SP data as HTML map mashup over Google Maps

####   Activate them

# a 

      library(akima)  

# map serie
  
     library(maptools)     	# tools for reading and handling spatial objects
     library(mapdata)      	# contains basic data to go along with 'maps' (topographic and geologic)
     library(maps)         	# for creating geographical maps
     library(mapproj)      	# for creating projected maps
     library(mapplots)       # data visualization on maps
     library(RgoogleMaps)    # overlays on Google map tiles in R
     

  # g
  
     # gpclibPermit()      	# allow general polygon clipping library for R - library(gpclib)
    library(ggmap)          # a package for spatial visualization with Google Maps and OpenStreetMap
    library(GEOmap)         # topographic and geologic mapping
    library(geoR)           # A nalysis of Geostatistical data
    library(gstat)          # geospatial and spatio temporal geostatistical modelling, prediction and simulations
    library(gridExtra)      # Miscellaneous Functions for "Grid" Graphics
 # l

    library(lattice)        # trellis Graphics for R
 
# r
  
     library(raster)       	# tools to deal with raster maps
     library(rgeos)        	# interface to geometry engine - open source (GEOS)
     library(rgdal)        	# bindings for the geospatial data abstraction library
     library(RSAGA)
  
  # s
    
     library(scales)         # for transparency
     library(sp)           	# classes and methods for spatial data
     library(sfsmisc)      	# utilities from Seminar fuerStatistik ETH Zurich
     library(spatstat)
      library(shapefiles)   # read and write ESRI shapefiles

  # p
  
     library(plotrix)        # various plotting functions 
     library(plotGoogleMaps) # plot SP data as HTML map mashup over Google Maps

# Activating all the packages to be used in this environment

# a 

require(akima)  

# map serie

require(maptools)     	# tools for reading and handling spatial objects
require(mapdata)      	# contains basic data to go along with 'maps' (topographic and geologic)
require(maps)         	# for creating geographical maps
require(mapproj)      	# for creating projected maps
require(mapplots)       # data visualization on maps
require(RgoogleMaps)    # overlays on Google map tiles in R


# g

# gpclibPermit()      	# allow general polygon clipping require for R - require(gpclib)
require(ggmap)          # a package for spatial visualization with Google Maps and OpenStreetMap
require(GEOmap)         # topographic and geologic mapping
require(geoR)           # A nalysis of Geostatistical data
require(gstat)          # geospatial and spatio temporal geostatistical modelling, prediction and simulations
require(gridExtra)      # Miscellaneous Functions for "Grid" Graphics
# l

require(lattice)        # trellis Graphics for R

# r

require(raster)       	# tools to deal with raster maps
require(rgeos)        	# interface to geometry engine - open source (GEOS)
require(rgdal)        	# bindings for the geospatial data abstraction require
require(RSAGA)

# s

require(scales)         # for transparency
require(sp)           	# classes and methods for spatial data
require(sfsmisc)      	# utilities from Seminar fuerStatistik ETH Zurich
require(spatstat)
require(shapefiles)   # read and write ESRI shapefiles

# p

require(plotrix)        # various plotting functions 
require(plotGoogleMaps) # plot SP data as HTML map mashup over Google Maps


####  Load in the data file (could this be done from the downloaded zip file directly?

ns=readShapeSpatial('/home/lenovo/Desktop/R programming/Work_Dir/ns/ns10k_wgs84.shp')

####  Determine the (x.min, x.max) and (y.min, y.max)

summary(ns)

####  Plot the shapefile

###  You can select any spefici area in the map by choosing the coordinates frame of the case study

###  In our example we are using the area of the Halifax Harbour as the main area of interest.

## Halifax harbour in 1:10 000

plot(ns, xlim=c(-63.6,-63.5), ylim=c(44.4,44.75), col ="light gray")
map.axes()				# show the effect of myborder = 0
grid()
map.scale(-63.4,44.45, ratio = FALSE, relwidth = 0.1, cex = 0.8)
title("Halifax Harbour"), 

## All NS in 1:10 000

 plot(ns, xlim=c(-66.5,-59.5), ylim=c(43.0,47.5), col ="light gray")
  grid()
  map.scale(-62,43.5, ratio = FALSE, relwidth = 0.1, cex = 0.8)
  title("Nova Scotia")

### or simply > plot(ns)

