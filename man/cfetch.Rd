% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache_access.R
\name{cfetch}
\alias{cfetch}
\title{Fetch a target locally if cached, otherwise fetch from remote and cache.}
\usage{
cfetch(target_set_name, remote_cache, modify_rbuildignore = T)
}
\arguments{
\item{target_set_name}{a \strong{single} quoted \code{"string"}, providing the name of the
target, or cluster of targets.}

\item{remote_cache}{the \link[drake:drake_cache]{drake::drake_cache} object from which the target
will be retrieved, and the metadata queried.}

\item{modify_rbuildignore}{boolean - If \code{TRUE}, the project's \code{.Rbuildignore}
will be searched for a pattern to ignore the cache, and if not found,
adds it.}
}
\description{
Given the name of the target/target set, and the \code{remote_cache}, this will
query the target's hash*(es)* from the remote, and then fetch it only if
a locally cached copy doesn't already exist.
}
\details{
This uses a very simple cache implementation, from \code{xfun::rds_cache()}.

It adds a directory, \code{.cfetch_cache}, to the top level of the project.

\code{xfun::rds_cache()} describes how to configure this.

I may add more caching params if necessary later.

\code{remote_cache} is distinct from the local, \code{xfun::rds_cache()}
}
\seealso{
xfun::rds_cache()

Other cache_access: 
\code{\link{load_merged_partitions}()}
}
\concept{cache_access}
