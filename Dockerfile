
#Pull the standard shiny-verse container
FROM rocker/shiny-verse:latest

#must install cmake to install from the scripts 
RUN apt-get update && apt-get install -y cmake

#Add the geospatial packages using the rocker script
RUN /rocker_scripts/install_geospatial.sh

#Install a few additional R packages
RUN install2.r --error \
  	tidycensus \ 
	DT \ 
	sqldf \ 
	xlsx \
	tigris \
	mapboxapi \
	shadowtext \ 
	shinythemes \
	data.table \
	lubridate \
	readxl \
	gt \
	gtExtras

