library(dplyr)
library(lubridate)
#load werg network data (catchments)
setwd("~/Documents/R Functions/Github/mwdata")
mw.catchvars<-read.csv("~/Data/GIS_Data/MW Data/WERG network/mw_catchvars.csv") #,row.names="site")
writeLines(c("#' MW catchment variables
  #'
  #' A dataset containing the catchment id and other attributes for 12319 sub-catchments
  #' around the Melbourne region in southeastern Australia. Also includes the SEGMENTNO
  #' identifier from the Australian Geofabric to link the MW subcatchments to geofabric
  #' environmental attributes
  #'
  #' @format A data frame with 12319 rows and 54 variables:
     #'\\describe{",paste("#'\\item{",names(mw.catchvars),"}{}", sep=""),"#'}", "#' @source Chris Walsh, University of Melbourne","\"mw.catchvars\""), con=file("R/mw.catchvars.R"))



#load geofabric attribute table
gf.attribute.list<-read.csv("/Users/nickbond/Data/GIS_Data/MW Data/CRES network/gf_stream_attributes_list.CSV")

#load geofabric data.
load("/Users/nickbond/Data/GIS_Data/MW Data/CRES network/mw.gf.streams.attributes.Rdata")


writeLines(c("#' Geofabric catchment variables
  #'
             #' A dataset containing the geofabric environmental attributes (n=423 variables)
             #' for 2270 geofabric catchments around Melbourne.
             #'
             #' @format A data frame with 2270 rows and 423 variables:
             #'\\describe{",paste("#'\\item{",names(mw.gf.streams.attributes),"}{}", sep=""),"#'}", "#' @source http://www.ga.gov.au/metadata-gateway/metadata/record/gcat_75066","\"mw.gf.streams.attributes\""), con=file("R/mw.geofab.R"))

#Calculate runoff depth (from the geofabric) and convert the WERG catchment areas to m2

mw.catchvars<-mw.catchvars %>% left_join(select(mw.gf.streams.attributes, one_of('SEGMENTNO','RUNANNMEAN', 'CATAREA')), by=c('segmentno' = 'SEGMENTNO')) %>% mutate(RUNANNDEP=RUNANNMEAN.y/CATAREA, AREA=AREA*0.000001, CAREA=CAREA*0.000001, SCAREA=SCAREA*0.000001) %>%
  select(-segmentno, -RUNANNMEAN.y, -CATAREA) %>% rename(RUNANNMEAN=RUNANNMEAN.x)

#load fish data
load("/Users/nickbond/Data/GIS_Data/MW Data/Fish data/mw_all_fish_pa.RData")
writeLines(c("#' MW Fish Survey Data
             #'
             #'Fish
             #'
             #' @format A data frame with 4234 fish surveys:
             #'\\describe{",paste("#'\\item{",names(mw.fish.pa),"}{}", sep=""),"#'}", "#' @source MW","\"mw.fish.pa\""), con=file("R/mw.fish.pa.R"))






#load strata
cat.strata<-read.csv("/Users/nickbond/Data/GIS_Data/MW Data/CRES network/catch_hierarchy.csv")
writeLines(c("#' MW Catchment strata
             #'
             #'cat.strata
             #'
             #' @format A data frame with nested catchment tables (Pfaffstetter coding and Nick's strata)
             #'\\describe{",paste("#'\\item{",names(cat.strata),"}{}", sep=""),"#'}", "#' @source Nick Bond","\"cat.strata\""), con=file("R/cat.strata.R"))


#load werg stream network (stream segments)
werg.nw<-read.csv("~/Data/GIS_Data/MW Data/WERG network/subcs with 2 buffer F measures_new.csv")
writeLines(c("#' MW Stream Network data (WERG Network)
             #'
             #'werg.nw
             #'
             #' @format A data frame with attributes for 15901 stream segments, including above and
             #' below ground pipes, open channels, and natural waterways.
             #'\\describe{",paste("#'\\item{",names(werg.nw),"}{}", sep=""),"#'}", "#' @source Nick Bond","\"werg.nw\""), con=file("R/werg.nw.R"))



dam.catchments<-read.csv("~/Data/GIS_Data/MW Data/WERG network/Damcatchments.csv")
writeLines(c("#' Table identifying catchments in or above onstream storages.
             #'
             #'dam.catchments
             #'
             #' @format A data frame with 21 observations and 6 variables
             #'\\describe{",paste("#'\\item{",names(dam.catchments),"}{}", sep=""),"#'}", "#' @source Nick Bond","\"dam.catchments\""), con=file("R/dam.catchments.R"))


#load modelled temperature data
load("/Users/nickbond/Data/GIS_Data/MW Data/MW_Temperature_Data/stream.subcs with Stream temp predictions.RData")
modelled.temps<-select(stream.subcs, site, ends_with("Tm"))
writeLines(c("#' Modelled stream temperature data.
             #'
             #' Modelled stream temperature data derived from BRT models built using land-use, hydrology and climate
             #' variables. Unpublished results (Walsh and Bond, 2015).
             #'
             #' @format A data frame with 12319 observations and 10 air and water temperature variables
             #'\\describe{",paste("#'\\item{",names(modelled.temps),"}{}", sep=""),"#'}", "#' @source Nick Bond","\"modelled.temps\""), con=file("R/modelled.temps.R"))

#load AWAP data 1988-1999
load("/Users/nickbond/Data/GIS_Data/MW Data/AWAP/month_flow_mw_catch_mm.RData")

awap_df_1990_2014 <- filter(month_flow_mw_catch_mm, year(lubri_awap)>1987) # & year(lubri_awap)<2000)
writeLines(c("#'Monthly runoff (mm) data.
             #'
             #' Monthly runoff data for 12319 subcatchments calculated
             #'from the Australian Water Availability Project (AWAP) runoff dataset.
             #'Note because of file size limits on github this data must be comnbined with
             #'pre 2000 data in R (e.g. dplyr::bind_rows(awap_df_1990, awap_df_2000)).
             #'
             #'awap_df_1990_2014
             #'
             #' @format A data frame with 12319 sites (columns) and data (rows) from 1988-2014
             #'\\describe{",paste("#'\\item{",names(awap_df_1990_2014),"}{}", sep=""),"#'}", "#' @source Nick Bond. Also see AWAP website ","\"awap_df_1990_2014\""), con=file("R/awap_df_1990_2014.R"))

#' #load AWAP data 2000+
#' awap_df_2000 <- filter(month_flow_mw_catch_mm, year(lubri_awap)>1999)
#' writeLines(c("#'Monthly runoff (mm) data for 12319 subcatchments calculated
#'                                #'from the Australian Water Availability Project (AWAP) runoff dataset.
#'                                #'Note because of file size limits on github this data must be comnbined with
#'                                #'pre 2000 data in R (e.g. dplyr::bind_rows(awap_df_1990, awap_df_2000)).
#'                                #'
#'                                #'awap_df_2000
#'                                #'
#'                                #' @format A data frame with 12319 sites (columns) and data (rows) from 2000-2014
#'                                #'\\describe{",paste("#'\\item{",names(awap_df_2000),"}{}", sep=""),"#'}", "#' @source Nick Bond. Also see AWAP website ","\"awap_df_2000\""), con=file("R/awap_df_2000.R"))


#load AWAP SRI data from 1988-2000
load("/Users/nickbond/Data/GIS_Data/MW Data/AWAP/SRI_dataframes.RData")
sri_df_1990<-filter(sri_df, year(DATE)>1987 & year(DATE)<2000)
writeLines(c("#' Monthly standardized runoff index (SRI) (1990-1999).
             #'
             #' Monthly standardized runoff index (SRI)for 12319 subcatchments calculated
             #' for 1, 3, 6, 12 and 24 month lags (non-weighted) based on AWAP runoff data.
             #' Note because of file size limits on github this data must be comnbined with
             #' pre 2000 data in R (e.g. dplyr::bind_rows(sri_df_1990, sri_df_2000)).
             #'
             #' sri_df_1990
             #'
             #' @format A data frame with 12319 observations and 10 air and water temperature variables
             #'\\describe{",paste("#'\\item{",names(sri_df_1990),"}{}", sep=""),"#'}", "#' @source Nick Bond. Also see AWAP website and SPEI R package details","\"sri_df_1990\""), con=file("R/sri_df_1990.R"))

sri_df_2000<-filter(sri_df, year(DATE)>1999)
writeLines(c("#' Monthly standardized runoff index (SRI) (2000-2014).
             #'
             #' Monthly standardized runoff index (SRI)for 12319 subcatchments calculated
             #' for 1, 3, 6, 12 and 24 month lags (non-weighted) based on AWAP runoff data.
             #' Note because of file size limits on github this data must be comnbined with
             #' pre 2000 data in R (e.g. dplyr::bind_rows(sri_df_1990, sri_df_2000)).
             #'
             #' sri_df_2000
             #'
             #' @format A data frame with 12319 observations and 10 air and water temperature variables
             #'\\describe{",paste("#'\\item{",names(sri_df_2000),"}{}", sep=""),"#'}", "#' @source Nick Bond. Also see AWAP website and SPEI R package details","\"sri_df_2000\""), con=file("R/sri_df_2000.R"))


#species.codes
species.codes<-read.csv("/Users/nickbond/Documents/Regional Datasets/Australian Fish database/Australian_Fish_Species_Codes.csv")
writeLines(c("#' Species names and abbreviations
             #'
             #' Table of fish species names and abbreviation codes based on scientific names. Also includes conservation status
             #' whether species are native or exotic. Table data is incomplete and includes many marine species and some crustaceans
             #'
             #' species.codes
             #'
             #' @format A data frame with 150 species names and 11 summary variables.
             #'\\describe{",paste("#'\\item{",names(species.codes),"}{}", sep=""),"#'}", "#' @source Nick Bond","\"species.codes\""), con=file("R/species.codes.R"))


help_files<-list.files(path = "R/")
help_files<-help_files[!grepl("mwdata.R",help_files) ]
help_files<-gsub(".R|mwdata.R","", help_files)

writeLines(c("#'mwdata contains the following datasets
                     #'
                     #'mwdata
                     #'
                     #' @format See individual help items.
                     #'\\describe{",paste("#'\\item{",help_files,"}{}", sep=""),"#'}"), con=file("R/mwdata.R"))



devtools::use_data(mw.catchvars, mw.gf.streams.attributes, mw.fish.pa, cat.strata, werg.nw, dam.catchments, modelled.temps, awap_df_1990_2014, sri_df_1990, sri_df_2000, species.codes, overwrite = TRUE)

devtools::use_package_doc()



devtools::document()
devtools::build()
devtools::check()






