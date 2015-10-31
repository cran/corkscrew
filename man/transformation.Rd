\name{transformation}
\alias{transformation}

\title{
Relationship between the response variables and predictors
}
\description{
Transformation is used to study the relationship between the two variables. The relationships that are studied include linear, power, log and arctangent.
}
\usage{
transformation(x, y, data)
}

\arguments{
  \item{x}{Predictor variables in the dataframe that are to be transformed.}
  \item{y}{Response variable in the dataframe.}
  \item{data}{Name of the dataframe.}
}
\details{
Applies only when both the response variable and the predictor variables are continuous.
}
\value{
Returns a list
\item{[[1]]}{Summary of the predictor variables' best transformation, correlation and influence studied against the y variable}
\item{[[2]]}{Summary of the predictor variables' correlation and influence for all the transformations studied against the y variable}
}

\author{
Navin Loganathan
}

\examples{
data(airquality)
transformation(names(airquality)[2:4],"Ozone",airquality)
}

\keyword{ ~misc }