#' Geofabric catchment variables
  #'
             #' A dataset containing the geofabric environmental attributes (n=423 variables)
             #' for 2270 geofabric catchments around Melbourne.
             #'
             #' @format A data frame with 2270 rows and 423 variables:
             #'\describe{
#'\item{SEGMENTNO}{}
#'\item{STRANNRAD}{}
#'\item{CATANNRAD}{}
#'\item{STRANNTEMP}{}
#'\item{CATANNTEMP}{}
#'\item{STRCOLDMTHMIN}{}
#'\item{CATCOLDMTHMIN}{}
#'\item{STRHOTMTHMAX}{}
#'\item{CATHOTMTHMAX}{}
#'\item{STRCOLDQTEMP}{}
#'\item{CATCOLDQTEMP}{}
#'\item{STRDRYQTEMP}{}
#'\item{CATDRYQTEMP}{}
#'\item{STRWETQTEMP}{}
#'\item{CATWETQTEMP}{}
#'\item{STRANNRAIN}{}
#'\item{CATANNRAIN}{}
#'\item{STRDRYQRAIN}{}
#'\item{CATDRYQRAIN}{}
#'\item{STRWETQRAIN}{}
#'\item{CATWETQRAIN}{}
#'\item{STRWARMQRAIN}{}
#'\item{CATWARMQRAIN}{}
#'\item{STRCOLDQRAIN}{}
#'\item{CATCOLDQRAIN}{}
#'\item{SUBEROSIVITY}{}
#'\item{CATEROSIVITY}{}
#'\item{STRANNGROMEGA}{}
#'\item{CATANNGROMEGA}{}
#'\item{STRANNGROMESO}{}
#'\item{CATANNGROMESO}{}
#'\item{STRANNGROMICRO}{}
#'\item{CATANNGROMICRO}{}
#'\item{STRGROMEGASEAS}{}
#'\item{CATGROMEGASEAS}{}
#'\item{STRGROMESOSEAS}{}
#'\item{CATGROMESOSEAS}{}
#'\item{STRGROMICROSEAS}{}
#'\item{CATGROMICROSEAS}{}
#'\item{CONLEN}{}
#'\item{DUPRESERVR}{}
#'\item{D2RESERVOR}{}
#'\item{BARRIERDOWN}{}
#'\item{BARRIERUP}{}
#'\item{DISTUPDAMW}{}
#'\item{D2DAMWALL}{}
#'\item{CONLENRES}{}
#'\item{CONLENDAM}{}
#'\item{ARTFBARIER}{}
#'\item{TOTLEN}{}
#'\item{CLIFFDOWN}{}
#'\item{CLIFFUP}{}
#'\item{WATERFALL}{}
#'\item{WFALLDOWN}{}
#'\item{WATERFALLUP}{}
#'\item{AWRCNO}{}
#'\item{AWRCNAME}{}
#'\item{BASINNO}{}
#'\item{BASINNAME}{}
#'\item{SUBPOURX}{}
#'\item{SUBPOURY}{}
#'\item{UPSID2}{}
#'\item{UPSID1}{}
#'\item{DWNID1}{}
#'\item{DWNID2}{}
#'\item{STRPOPMAX}{}
#'\item{SUBPOPMAX}{}
#'\item{CATPOPMAX}{}
#'\item{STRPOPMEAN}{}
#'\item{SUBPOPMEAN}{}
#'\item{CATPOPMEAN}{}
#'\item{STRPOP_GT_1}{}
#'\item{SUBPOP_GT_1}{}
#'\item{CATPOP_GT_1}{}
#'\item{STRPOP_GT_10}{}
#'\item{SUBPOP_GT_10}{}
#'\item{CATPOP_GT_10}{}
#'\item{STR_MOD}{}
#'\item{SUB_MOD}{}
#'\item{CAT_MOD}{}
#'\item{STR_IRR}{}
#'\item{SUB_IRR}{}
#'\item{CAT_IRR}{}
#'\item{STR_AQU}{}
#'\item{SUB_AQU}{}
#'\item{CAT_AQU}{}
#'\item{STR_INTAN}{}
#'\item{SUB_INTAN}{}
#'\item{CAT_INTAN}{}
#'\item{STR_INTPL}{}
#'\item{SUB_INTPL}{}
#'\item{CAT_INTPL}{}
#'\item{STR_PEST}{}
#'\item{SUB_PEST}{}
#'\item{CAT_PEST}{}
#'\item{STR_FERT}{}
#'\item{SUB_FERT}{}
#'\item{CAT_FERT}{}
#'\item{STR_FORSTRY}{}
#'\item{SUB_FORSTRY}{}
#'\item{CAT_FORSTRY}{}
#'\item{STR_MINING}{}
#'\item{SUB_MINING}{}
#'\item{CAT_MINING}{}
#'\item{STR_URBAN}{}
#'\item{SUB_URBAN}{}
#'\item{CAT_URBAN}{}
#'\item{STR_DRAINAGE}{}
#'\item{SUB_DRAINAGE}{}
#'\item{CAT_DRAINAGE}{}
#'\item{STR_ARTIMP}{}
#'\item{SUB_ARTIMP}{}
#'\item{CAT_ARTIMP}{}
#'\item{STR_ROAD}{}
#'\item{SUB_ROAD}{}
#'\item{CAT_ROAD}{}
#'\item{STRDENSITY}{}
#'\item{NO_WATERHOLES}{}
#'\item{KM_WATERHOLES}{}
#'\item{NO_SPRINGS}{}
#'\item{KM_SPRINGS}{}
#'\item{A_LAKES}{}
#'\item{KM_LAKES}{}
#'\item{A_WCOURSE}{}
#'\item{KM_WCOURSE}{}
#'\item{LAKES}{}
#'\item{SPRINGS}{}
#'\item{WATCRSAREA}{}
#'\item{WATERHOLES}{}
#'\item{WATERYNESS}{}
#'\item{RCHLEN}{}
#'\item{NPPBASEANN}{}
#'\item{NPPBASE1}{}
#'\item{NPPBASE2}{}
#'\item{NPPBASE3}{}
#'\item{NPPBASE4}{}
#'\item{NPPBASE5}{}
#'\item{NPPBASE6}{}
#'\item{NPPBASE7}{}
#'\item{NPPBASE8}{}
#'\item{NPPBASE9}{}
#'\item{NPPBASE10}{}
#'\item{NPPBASE11}{}
#'\item{NPPBASE12}{}
#'\item{SFRDI}{}
#'\item{IMF}{}
#'\item{FDF}{}
#'\item{SCDI}{}
#'\item{EF}{}
#'\item{IF}{}
#'\item{SF}{}
#'\item{NWISF}{}
#'\item{GDSF}{}
#'\item{SDSF}{}
#'\item{NWIIF}{}
#'\item{GDIF}{}
#'\item{SDIF}{}
#'\item{NWIEF}{}
#'\item{GDEF}{}
#'\item{SDEF}{}
#'\item{LUF}{}
#'\item{LBF}{}
#'\item{NWIIMF}{}
#'\item{GDIMF}{}
#'\item{SDIMF}{}
#'\item{NWIFDF}{}
#'\item{GDFDF}{}
#'\item{SDFDF}{}
#'\item{CDI}{}
#'\item{FRDI}{}
#'\item{RDI}{}
#'\item{RUNANNMEAN}{}
#'\item{RUNMINANNTOT}{}
#'\item{RUNPCTL5}{}
#'\item{RUNPCTL10}{}
#'\item{RUNPCTL20}{}
#'\item{RUNPCTL30}{}
#'\item{RUNPCTL40}{}
#'\item{RUNPCTL50}{}
#'\item{RUNPCTL60}{}
#'\item{RUNPCTL70}{}
#'\item{RUNPCTL80}{}
#'\item{RUNPCTL90}{}
#'\item{RUNPCTL95}{}
#'\item{RUNMAXANNTOT}{}
#'\item{RUNMTHCOFV}{}
#'\item{RUNANNCOFV}{}
#'\item{RUNSUMMERMEAN}{}
#'\item{RUNAUTUMNMEAN}{}
#'\item{RUNWINTERMEAN}{}
#'\item{RUNSPRINGMEAN}{}
#'\item{RUNJAN}{}
#'\item{RUNFEB}{}
#'\item{RUNMAR}{}
#'\item{RUNAPR}{}
#'\item{RUNMAY}{}
#'\item{RUNJUN}{}
#'\item{RUNJUL}{}
#'\item{RUNAUG}{}
#'\item{RUNSEP}{}
#'\item{RUNOCT}{}
#'\item{RUNNOV}{}
#'\item{RUNDEC}{}
#'\item{RUNSKEWNESS}{}
#'\item{RUNPERENIALITY}{}
#'\item{RUNJANCV}{}
#'\item{RUNFEBCV}{}
#'\item{RUNMARCV}{}
#'\item{RUNAPRCV}{}
#'\item{RUNMAYCV}{}
#'\item{RUNJUNCV}{}
#'\item{RUNJULCV}{}
#'\item{RUNAUGCV}{}
#'\item{RUNSEPCV}{}
#'\item{RUNOCTCV}{}
#'\item{RUNNOVCV}{}
#'\item{RUNDECCV}{}
#'\item{RUNMEANMINMTH}{}
#'\item{RUNMEANMAXMTH}{}
#'\item{RUNCVMINMTH}{}
#'\item{RUNCVMAXMTH}{}
#'\item{CATSNOW}{}
#'\item{STR_CLAYA}{}
#'\item{STR_CLAYB}{}
#'\item{STR_SANDA}{}
#'\item{STR_UNCONSOLDTED}{}
#'\item{CAT_UNCONSOLDTED}{}
#'\item{STR_IGNEOUS}{}
#'\item{CAT_IGNEOUS}{}
#'\item{STR_SILICSED}{}
#'\item{CAT_SILICSED}{}
#'\item{STR_CARBNATESED}{}
#'\item{CAT_CARBNATESED}{}
#'\item{STR_OTHERSED}{}
#'\item{CAT_OTHERSED}{}
#'\item{STR_METAMORPH}{}
#'\item{CAT_METAMORPH}{}
#'\item{STR_SEDVOLC}{}
#'\item{CAT_SEDVOLC}{}
#'\item{STR_OLDROCK}{}
#'\item{CAT_OLDROCK}{}
#'\item{CAT_A_KSAT}{}
#'\item{STR_A_KSAT}{}
#'\item{CAT_SOLPAWHC}{}
#'\item{STRELEMEAN}{}
#'\item{STRELEMIN}{}
#'\item{STRELEMAX}{}
#'\item{SUBELEMEAN}{}
#'\item{SUBELEMAX}{}
#'\item{CATELEMAX}{}
#'\item{CATELEMEAN}{}
#'\item{SUBAREA}{}
#'\item{CONFINEMENT}{}
#'\item{CATAREA}{}
#'\item{STRAHLER}{}
#'\item{UPSDIST}{}
#'\item{VALLEYSLOPE}{}
#'\item{DOWNMAXSLP}{}
#'\item{DOWNAVGSLP}{}
#'\item{D2OUTLET}{}
#'\item{ELONGRATIO}{}
#'\item{CATSTORAGE}{}
#'\item{ASPECT}{}
#'\item{CATRELIEF}{}
#'\item{RELIEFRATIO}{}
#'\item{CATSLOPE}{}
#'\item{SUBSLOPE}{}
#'\item{SUBSLOPE_GT_10}{}
#'\item{SUBSLOPE_GT_30}{}
#'\item{STRGRASSES_NAT}{}
#'\item{CATGRASSES_NAT}{}
#'\item{STRFORESTS_NAT}{}
#'\item{CATFORESTS_NAT}{}
#'\item{STRSHRUBS_NAT}{}
#'\item{CATSHRUBS_NAT}{}
#'\item{STRWOODLANDS_NAT}{}
#'\item{CATWOODLANDS_NAT}{}
#'\item{STRBARE_NAT}{}
#'\item{CATBARE_NAT}{}
#'\item{STRGRASSES_EXT}{}
#'\item{CATGRASSES_EXT}{}
#'\item{STRFORESTS_EXT}{}
#'\item{CATFORESTS_EXT}{}
#'\item{STRSHRUBS_EXT}{}
#'\item{CATSHRUBS_EXT}{}
#'\item{STRWOODLANDS_EXT}{}
#'\item{CATWOODLANDS_EXT}{}
#'\item{STRBARE_EXT}{}
#'\item{CATBARE_EXT}{}
#'\item{STRNODATA_NAT}{}
#'\item{CATNODATA_NAT}{}
#'\item{STRNODATA_EXT}{}
#'\item{CATNODATA_EXT}{}
#'\item{STRMVSG1_NAT}{}
#'\item{STRMVSG2_NAT}{}
#'\item{STRMVSG3_NAT}{}
#'\item{STRMVSG4_NAT}{}
#'\item{STRMVSG5_NAT}{}
#'\item{STRMVSG7_NAT}{}
#'\item{STRMVSG8_NAT}{}
#'\item{STRMVSG9_NAT}{}
#'\item{STRMVSG11_NAT}{}
#'\item{STRMVSG12_NAT}{}
#'\item{STRMVSG13_NAT}{}
#'\item{STRMVSG14_NAT}{}
#'\item{STRMVSG15_NAT}{}
#'\item{STRMVSG16_NAT}{}
#'\item{STRMVSG17_NAT}{}
#'\item{STRMVSG18_NAT}{}
#'\item{STRMVSG19_NAT}{}
#'\item{STRMVSG20_NAT}{}
#'\item{STRMVSG21_NAT}{}
#'\item{STRMVSG22_NAT}{}
#'\item{STRMVSG23_NAT}{}
#'\item{STRMVSG24_NAT}{}
#'\item{STRMVSG26_NAT}{}
#'\item{STRMVSG27_NAT}{}
#'\item{STRMVSG28_NAT}{}
#'\item{STRMVSG29_NAT}{}
#'\item{STRMVSG30_NAT}{}
#'\item{STRMVSG31_NAT}{}
#'\item{STRMVSG32_NAT}{}
#'\item{STRMVSG33_NAT}{}
#'\item{STRMVSG34_NAT}{}
#'\item{STRMVSG35_NAT}{}
#'\item{STRMVSG36_NAT}{}
#'\item{STRMVSG37_NAT}{}
#'\item{STRMVSG38_NAT}{}
#'\item{STRMVSG39_NAT}{}
#'\item{STRMVSG40_NAT}{}
#'\item{STRMVSG41_NAT}{}
#'\item{STRMVSG42_NAT}{}
#'\item{STRMVSG43_NAT}{}
#'\item{STRMVSG44_NAT}{}
#'\item{STRMVSG46_NAT}{}
#'\item{STRMVSG47_NAT}{}
#'\item{STRMVSG48_NAT}{}
#'\item{STRMVSG49_NAT}{}
#'\item{STRMVSG50_NAT}{}
#'\item{STRMVSG51_NAT}{}
#'\item{STRMVSG52_NAT}{}
#'\item{STRMVSG53_NAT}{}
#'\item{STRMVSG54_NAT}{}
#'\item{STRMVSG55_NAT}{}
#'\item{STRMVSG56_NAT}{}
#'\item{STRMVSG57_NAT}{}
#'\item{STRMVSG58_NAT}{}
#'\item{STRMVSG59_NAT}{}
#'\item{STRMVSG60_NAT}{}
#'\item{STRMVSG61_NAT}{}
#'\item{STRMVSG62_NAT}{}
#'\item{STRMVSG63_NAT}{}
#'\item{STRMVSG64_NAT}{}
#'\item{STRMVSG97_NAT}{}
#'\item{STRMVSG98_NAT}{}
#'\item{STRMVSG99_NAT}{}
#'\item{STRMVSG1_EXT}{}
#'\item{STRMVSG2_EXT}{}
#'\item{STRMVSG3_EXT}{}
#'\item{STRMVSG4_EXT}{}
#'\item{STRMVSG5_EXT}{}
#'\item{STRMVSG7_EXT}{}
#'\item{STRMVSG8_EXT}{}
#'\item{STRMVSG9_EXT}{}
#'\item{STRMVSG11_EXT}{}
#'\item{STRMVSG12_EXT}{}
#'\item{STRMVSG13_EXT}{}
#'\item{STRMVSG14_EXT}{}
#'\item{STRMVSG15_EXT}{}
#'\item{STRMVSG16_EXT}{}
#'\item{STRMVSG17_EXT}{}
#'\item{STRMVSG18_EXT}{}
#'\item{STRMVSG19_EXT}{}
#'\item{STRMVSG20_EXT}{}
#'\item{STRMVSG21_EXT}{}
#'\item{STRMVSG22_EXT}{}
#'\item{STRMVSG23_EXT}{}
#'\item{STRMVSG24_EXT}{}
#'\item{STRMVSG26_EXT}{}
#'\item{STRMVSG27_EXT}{}
#'\item{STRMVSG28_EXT}{}
#'\item{STRMVSG29_EXT}{}
#'\item{STRMVSG30_EXT}{}
#'\item{STRMVSG31_EXT}{}
#'\item{STRMVSG32_EXT}{}
#'\item{STRMVSG33_EXT}{}
#'\item{STRMVSG34_EXT}{}
#'\item{STRMVSG35_EXT}{}
#'\item{STRMVSG36_EXT}{}
#'\item{STRMVSG37_EXT}{}
#'\item{STRMVSG38_EXT}{}
#'\item{STRMVSG39_EXT}{}
#'\item{STRMVSG40_EXT}{}
#'\item{STRMVSG41_EXT}{}
#'\item{STRMVSG42_EXT}{}
#'\item{STRMVSG43_EXT}{}
#'\item{STRMVSG44_EXT}{}
#'\item{STRMVSG46_EXT}{}
#'\item{STRMVSG47_EXT}{}
#'\item{STRMVSG48_EXT}{}
#'\item{STRMVSG49_EXT}{}
#'\item{STRMVSG50_EXT}{}
#'\item{STRMVSG51_EXT}{}
#'\item{STRMVSG52_EXT}{}
#'\item{STRMVSG53_EXT}{}
#'\item{STRMVSG54_EXT}{}
#'\item{STRMVSG55_EXT}{}
#'\item{STRMVSG56_EXT}{}
#'\item{STRMVSG57_EXT}{}
#'\item{STRMVSG58_EXT}{}
#'\item{STRMVSG59_EXT}{}
#'\item{STRMVSG60_EXT}{}
#'\item{STRMVSG61_EXT}{}
#'\item{STRMVSG62_EXT}{}
#'\item{STRMVSG63_EXT}{}
#'\item{STRMVSG64_EXT}{}
#'\item{STRMVSG90_EXT}{}
#'\item{STRMVSG91_EXT}{}
#'\item{STRMVSG92_EXT}{}
#'\item{STRMVSG93_EXT}{}
#'\item{STRMVSG97_EXT}{}
#'\item{STRMVSG98_EXT}{}
#'\item{STRMVSG99_EXT}{}
#'}
#' @source http://www.ga.gov.au/metadata-gateway/metadata/record/gcat_75066
"mw.gf.streams.attributes"
