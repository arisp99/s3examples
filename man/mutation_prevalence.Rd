% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mut-prev.R
\name{mutation_prevalence}
\alias{mutation_prevalence}
\title{Compute prevalence of mutations}
\usage{
mutation_prevalence(data, threshold)
}
\arguments{
\item{data}{A data frame, data frame extension (e.g. a tibble), or a lazy
data frame (e.g. from dbplyr or dtplyr).}

\item{threshold}{A minimum UMI count which reflects the confidence in the
genotype call. Data with a UMI count of less than the threshold will be
filtered out from the analysis.}
}
\value{
A \link[tibble:tibble]{tibble} with the extra class \code{mutation_prev}. The output
has the following columns:
\itemize{
\item \code{mutation_name}: The unique mutation sequenced.
\item \code{n_total}: The number of samples for which a mutation site was sequenced.
\item \code{n_mutant}: The number of samples for which a mutation occurred.
\item \code{prevalence}: The prevalence of the mutation.
}
}
\description{
Generate a table representing the prevalence of unique mutations. In order to
ensure confidence in the results, a threshold is provided indicating
confidence in genotype calls. All data that do not meet this threshold will
be removed from the computation.
}
