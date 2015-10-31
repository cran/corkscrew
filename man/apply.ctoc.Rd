\name{apply.ctoc}
\alias{apply.ctoc}

\title{
Applying Categorical to Continuous conversion to a new dataframe
}
\description{
Extrapolating the categorical to continuous conversion that is calculated from one dataframe to another dataframe. 
}
\usage{
apply.ctoc(y, x, data, newdata, min.obs)
}

\arguments{
  \item{y}{Response variable (categorical or continuous).}
  \item{x}{Predictor variables in the dataframe which are categorical and need to be converted into continuous.}
  \item{data}{Name of the dataframe from which the values of the categories have to be calculated.}
  \item{newdata}{Name of the dataframe to which the values of the categories have to be applied.}
  \item{min.obs}{The minimum number of observations within a category in a categorical variable to get converted into a continuous feature. 
All the categories which have observations less than the min.obs will form a different category.}
}
\details{
This function is only for categorical variables. The min.obs refers to the minimum number of observations in the "data".
}
\value{
Returns a dataframe with converted features without replacing the original ones.
}

\author{
Santhosh Sasanapuri
}

\seealso{
\code{\link{ctoc}}, \code{\link{tbin}}, \code{\link{apply.tbin}}.
}
\examples{
data(ChickWeight)
set.seed(2)
sample_ex <- sample(nrow(ChickWeight), size = 289, replace = FALSE, prob = NULL)
train <- ChickWeight[sample_ex,]
test <- ChickWeight[-sample_ex,colnames(ChickWeight) != "weight"]
# Returns the test dataframe with an added column "Diet_cont" by extrapolating it from train
head(apply.ctoc(y = "weight", "Diet", data = train, newdata = test, min.obs = 60))
}

\keyword{ ~misc }