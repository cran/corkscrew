\name{apply.tbin}
\alias{apply.tbin}

\title{
Extrapolate t-test based binning to a new data
}
\description{
Extrapolates the binning of categorical variables to the new datasets.
}
\usage{
apply.tbin(idv, train.output, test)
}

\arguments{
  \item{idv}{Predictor variables in the dataframe which are categorical and need to be binned.}
  \item{train.output}{The output object of the tbin function.}
  \item{test}{A new data set on which binning has to be extrapolated.}
}
\details{
This function performs binning on the new dataset based on the output object from the tbin function.
}
\value{
Returns a dataframe which contains the extrapolated variables of the output object from tbin function appended to the new dataset.
}

\author{
Mohan Manivannan
}
\section{Warning}{
New level error is thrown if the new dataset contains new levels other than what is present in the old dataset.
}

\seealso{
\code{\link{tbin}}, \code{\link{ctoc}}, \code{\link{apply.ctoc}}.
}
\examples{
train = as.data.frame(cbind(runif(1000, 10, 1000),sample(1:40, 1000,TRUE)))
colnames(train) = c("response","state")
train$state = as.factor(train$state)
train.output = tbin(dv = "response",idv = c("state"),train,25,TRUE)

# extrapolating the tbin function to a new dataset using apply.tbin
test = as.data.frame(sample(1:40, 100,TRUE))
colnames(test) = c("state")
test$state = as.factor(test$state)
test.output = apply.tbin(idv = c("state"), train.output, test)
}

\keyword{ ~misc }