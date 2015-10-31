\name{tbin}
\alias{tbin}

\title{
t-test based binning
}
\description{
Bins the different levels of a categorical variable based on the similarity of the response.
}
\usage{
tbin(dv, idv, train, min.obs, plot.bin = c(TRUE, FALSE), method = c(1, 2, 3))
}

\arguments{
  \item{dv}{The response variable and it must be continuous.}
  \item{idv}{Predictor variables in the dataframe which are categorical and need to be binned.}
  \item{train}{Name of the dataframe.}
  \item{min.obs}{All the levels with the count of observations less than min.obs are binned into one category, by default the min.obs is set at 30.}
  \item{plot.bin}{If TRUE, then a heat map comparing the binned levels and original levels is plotted, by default the plot.bin is set as FALSE.}
  \item{method}{Three types of community detection is used for binning the levels, the methods are 1.Fastgreedy, 2.Walktrap, 3.edge.betweenness choose the method that suits the needs,
by default the method is set at 1.}
}
\details{
The levels of a categorical variable are compared with each other and those levels which are having same response levels are binned together as a category.Before 
comparing the levels, the levels which has less than the minimum observation cut-off are binned to form a small category. Every pair of levels are compared using 
either a parametric or non-parametric test depending on the normality of the response data. A pairwise comparison matrix is created for each level of a 
categorical variables which is further processed to form a graph. Then the levels which should be combined together are identified using a community detection 
algorithm, a community is a collection of levels which have statistically same response level. The newly created variables in the new data set are created by 
extrapolating the values from the original data set(training).
}
\value{
The tbin output contains the newly created binned categorical variables appended to the original data(training) set. The names of the new variables are sufficed
with "_cat" to their corresponding original variables. 
}

\author{
Mohan Manivannan
}
\note{
The minimum observation cut-off is set to 30, so that the statistical significance of the parametric and non-parametric tests are applicable.
}

\seealso{
\code{\link{apply.tbin}}, \code{\link{ctoc}}, \code{\link{apply.ctoc}}.
}

\examples{
train = as.data.frame(cbind(runif(1000, 10, 1000),sample(1:40, 1000,TRUE)))
colnames(train) = c("response","state")
train$state = as.factor(train$state)
train.output = tbin(dv = "response",idv = c("state"),train,25,TRUE)
}

\keyword{ ~misc }