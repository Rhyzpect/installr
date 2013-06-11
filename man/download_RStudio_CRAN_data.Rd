\name{download_RStudio_CRAN_data}
\alias{download_RStudio_CRAN_data}
\title{Download RStudio CRAN mirror data files into a folder}
\usage{
  download_RStudio_CRAN_data(START = "2013-04-02",
    END = "2013-04-20", log_folder = tempdir(), ...)
}
\arguments{
  \item{START}{A character string of the START date for
  files to be downloaded. The date format is "YYYY-MM-DD".}

  \item{END}{A character string of the END date for files
  to be downloaded. The date format is "YYYY-MM-DD".}

  \item{log_folder}{the folder into which we would like the
  files to be downloaded to. Default is the temporary
  folder picked by \link{tempdir}.}

  \item{...}{not in use.}
}
\value{
  Returns the value of log_folder.
}
\description{
  This function downlaod these files based on the code from
  the downlaod page (\url{http://cran-logs.rstudio.com/})
  into a temporary folder.
}
\details{
  RStudio maintains its own CRAN mirror,
  \url{http://cran.rstudio.com} and offers its log files.
}
\examples{
\dontrun{
# The first two functions might take a good deal of time to run (depending on the date range)
RStudio_CRAN_data_folder <- download_RStudio_CRAN_data(START = '2013-04-02', END = '2013-04-05') # around the time R 3.0.0 was released
my_RStudio_CRAN_data <- read_RStudio_CRAN_data(RStudio_CRAN_data_folder)

# barplots: (more functions can easily be added in the future)
barplot_package_users_per_day("installr", my_RStudio_CRAN_data)
barplot_package_users_per_day("plyr", my_RStudio_CRAN_data)
}
}
\seealso{
  \link{download_RStudio_CRAN_data},
  \link{read_RStudio_CRAN_data},\link{barplot_package_users_per_day}
}
