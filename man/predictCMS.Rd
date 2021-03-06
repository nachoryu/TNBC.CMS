% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predictCMS.R
\name{predictCMS}
\alias{predictCMS}
\title{TNBC consensus molecular subtype prediction}
\usage{
predictCMS(expr)
}
\arguments{
\item{expr}{A \code{SummarizedExperiment} object or a matrix containig gene
expression profiles. If input is a \code{SummarizedExperiment}, the first
element in the assays list should be a matrix of gene expression.
Rows and columns of the gene expression matrix correspond to genes and
samples, respectively (rownames must be to gene symbols).}
}
\value{
A vector of assigned subtypes.
}
\description{
Predicts the TNBC consensus molecular subtype of TNBC samples.
}
\examples{
# Load gene expression profiles of TNBC samples
data(GSE25055)

# Predict consensus molecular subtypes of TNBC samples
prediction <- predictCMS(expr = GSE25055)
table(prediction)
}
