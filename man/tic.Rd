\name{tic}

\alias{tic}

\title{
Start stopwatch timer
}

\description{
tic starts a stopwatch timer to measure performance. The function records the internal time at execution of the tic command. Display the elapsed time with the toc function.
}

\usage{
tic(gcFirst = TRUE, type = c("elapsed", "user.self", "sys.self"))
}

\arguments{
  \item{gcFirst}{
gcFirst <- TRUE
}
  \item{type}{
type <- c("elapsed","user.self","sys.self")
}
}

\value{
None
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{
tic()
Sys.sleep(2)
toc()
}

