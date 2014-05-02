\name{toc}

\alias{toc}

\title{
Read elasped time from stopwatch
}

\description{
toc reads the elasped time from the stopwatch timer started by the tic function. The function reads the internal time at the execution of the toc command, and displays the elapsed time since the most recent call to the tic function that had no output, in seconds.
}

\usage{
toc()
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

