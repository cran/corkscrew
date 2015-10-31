\name{ctoc}
\alias{ctoc}

\title{
Categorical variables into Continuous features
}
\description{
Converting categorical variables into continuous features using the mean of the response variable for the respective categories without using the index record.
}
\usage{
ctoc(y, x, data, min.obs)
}

\arguments{
  \item{y}{Response variable (categorical or continuous).}
  \item{x}{Predictor variables in the dataframe which are categorical and need to be converted into continuous.}
  \item{data}{Name of the dataframe.}
  \item{min.obs}{The minimum number of observations within a category in a categorical variable to get converted into a continuous feature. 
All the categories which have observations less than the min.obs will form a different category.}
}
\details{
This function is only for categorical variables.
}
\value{
Returns a dataframe with converted features without replacing the original ones.
}

\author{
Santhosh Sasanapuri
}

\seealso{
\code{\link{apply.ctoc}}, \code{\link{tbin}}, \code{\link{apply.tbin}}.
}
\examples{
data(ChickWeight)
# Converting the "Chick" variable into factor from ord.factor for demonstration purposes.
ChickWeight$Chick <- as.factor(as.numeric(ChickWeight$Chick))
# Returns a dataframe with two added columns for "Chick" and "Diet"
head(ctoc(y = "weight", x = c("Chick","Diet"), data = ChickWeight, min.obs = 12))
}

\keyword{ ~misc }