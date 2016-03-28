<!-- README.md is generated from README.Rmd. Please edit that file -->
mwdata
======

mwdata includes a number of datasets used in modelling activities within the WERG group. THis package is a useful starting point for a number of datasets shared within the group. See the help file for a full list of datasets and associated variables.

Installation
============

To install run the following code:

      # install devtools pacakge
      install.packages(c("devtools"))

      # install mwdata package
        devtools::install_github("nickbond/mwdata",  auth_token = ("85efdecfa18bec5db2b469cb30dd22a185c3602f"))

        # Remove the package zip after installation
        unlink("mwdata.zip")
        
        #load library
        library(mwdata)

Developer
=========

Nick Bond <n.bond@griffith.edu.au>
