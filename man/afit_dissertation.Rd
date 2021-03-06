% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/afit_dissertation.R
\name{afit_dissertation}
\alias{afit_dissertation}
\title{Air Force Institute of Technology Dissertation Template}
\usage{
afit_dissertation(
  ...,
  keep_tex = TRUE,
  md_extensions = c("-autolink_bare_uris"),
  fig_caption = TRUE,
  toc = TRUE,
  template = "template.tex",
  format = "afit_dissertation"
)
}
\arguments{
\item{...}{Arguments to \code{rmarkdown::pdf_document}}

\item{keep_tex}{Should the raw TeX files be kept?}

\item{md_extensions}{Extensions passed to the Markdown engine}

\item{fig_caption}{Should figure captions be enabled?}

\item{toc}{Should a table of contents be created?}

\item{template}{The TeX template used}

\item{format}{The format of the document}
}
\value{
R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
}
\description{
Format for creating the initial pages of AFIT theses, dissertations, and reports.
}
\details{
Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
}
\examples{

\dontrun{
rmarkdown::draft("MyThesis.Rmd", template = "afit_dissertation", package = "AFIT")
}

}
\seealso{
\code{\link{style_guide}}
}
