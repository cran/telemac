% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/steering.R
\name{cas}
\alias{cas}
\alias{cas.default}
\alias{cas.list}
\alias{cas.t2d_cas}
\alias{print.t2d_cas}
\title{Steering file (*.cas)}
\usage{
cas(x, fname, ...)

\method{cas}{default}(x = NULL, fname = NULL, ...)

\method{cas}{list}(x, fname = NULL, ...)

\method{cas}{t2d_cas}(x, fname = NULL, data = NULL, ...)

\method{print}{t2d_cas}(x, ..., n = 10)
}
\arguments{
\item{x}{Either: \code{NULL} (default), in which case a simple template will be generated;
a \code{character} string providing the name of an existing steering file;
a \code{list} with named elements being the steering parameters and their values;
an object of class \code{t2d_cas}.}

\item{fname}{\code{character} string providing the name of the steering file
that is to be generated (can also be used to replace an existing entry).}

\item{...}{Arguments passed to or from other methods.}

\item{data}{\code{list} that can be given to update an existing object \code{x}.}

\item{n}{Maximum number of steering parameters to print.}
}
\value{
An object of class \code{t2d_cas} consisting of a \code{list} with
steering parameters, and an
attribute \code{file} pointing to a specific steering file.
}
\description{
Initialise a steering file for use within TELEMAC.
}
\examples{
# template steering parameters
cas_tpl <- cas()

# investigate object
cas_tpl
str(cas_tpl)
class(cas_tpl) # inherits from list

# e.g. subsetting works as with regular lists
cas_subset <- cas_tpl[1:5]
cas_subset

# update cas object (e.g. assign new file name)
cas_updated <- cas(cas_tpl, fname = "test.cas")
cas_updated
}
