#' Monthly standardized runoff index (SRI) for 12319 subcatchments calculated
             #'for 1, 3, 6, 12 and 24 month lags (non-weighted) based on AWAP runoff data.
             #'Note because of file size limits on github this data must be comnbined with
             #'pre 2000 data in R (e.g. dplyr::bind_rows(sri_df_1990, sri_df_2000)).
             #'
             #'sri_df_2000
             #'
             #' @format A data frame with 12319 observations and 10 air and water temperature variables
             #'\describe{
#'\item{DATE}{}
#'\item{SITE}{}
#'\item{SRI_1mth}{}
#'\item{SRI_3mth}{}
#'\item{SRI_6mth}{}
#'\item{SRI_12mth}{}
#'\item{SRI_24mth}{}
#'}
#' @source Nick Bond. Also see AWAP website and SPEI R package details
"sri_df_2000"
