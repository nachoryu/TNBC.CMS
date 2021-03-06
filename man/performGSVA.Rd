% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/performGSVA.R
\name{performGSVA}
\alias{performGSVA}
\title{Gene set variation analysis}
\usage{
performGSVA(expr, pred, gene.set = NULL, gsva.kcdf = "Gaussian")
}
\arguments{
\item{expr}{A \code{SummarizedExperiment} object or a matrix containig gene
expression profiles. If input is a \code{SummarizedExperiment}, the first
element in the assays list should be a matrix of gene expression.
Rows and columns of the gene expression matrix correspond to genes and
samples, respectively (rownames must be to gene symbols).}

\item{pred}{A vector of predicted consensus molecular subtypes.}

\item{gene.set}{Gene sets provided as a list. If NULL,
the hallmark pathway gene sets are used.}

\item{gsva.kcdf}{Kernel to be used in the estimation of
the cumulative distribution function. By default,
this is set to \code{"Gaussian"} which is suitable
for continuous expression values. If expression values
are counts, \code{"Poisson"} is recommended.}
}
\value{
A matrix of GSVA enrichment scores.
}
\description{
Performs GSVA on gene sets. Also draws a heatmap representing GSVA scores.
}
\details{
This is a wrapper function of the \code{gsva}
function in the \code{GSVA} package to compute GSVA
enrichment scores per sample and produce a heatmap
comparing them across consensus molecular subtypes.
}
\examples{
# Load gene expression profiles of TNBC samples
data(GSE25055)

# Predict consensus molecular subtypes of TNBC samples
prediction <- predictCMS(expr = GSE25055)

# Perform GSVA on the hallmark pathway gene sets
resultGSVA <- performGSVA(expr = GSE25055, pred = prediction)
}
\references{
Liberzon, A. et al. (2015). The molecular signatures
database hallmark gene set collection. \emph{Cell systems}, 1, 417-425.
}
