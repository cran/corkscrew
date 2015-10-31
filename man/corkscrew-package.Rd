\name{corkscrew-package}
\alias{corkscrew-package}
\alias{corkscrew}
\docType{package}
\title{
Preprocessor for Data Modeling
}
\description{Includes binning categorical variables into lesser number of categories based on t-test, 
converting categorical variables into continuous features using the mean of the response variable for the respective categories, 
understanding the relationship between the response variable and predictor variables using data transformations.
}
\details{
\tabular{ll}{
Package: \tab corkscrew\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2015-10-30\cr
Depends: \tab R (>= 3.0.1), ggplot2, gplots, RColorBrewer, igraph, stats, grDevices\cr
License: \tab GPL (version 2 or newer)\cr
}

}
\author{ Navin Loganathan, Mohan Manivannan, Santhosh Sasanapuri, LatentView Analytics}

\keyword{package}

\examples{
# using transformation 
data(airquality)
transformation(names(airquality)[2:4],"Ozone",airquality)

# using ctoc
data(ChickWeight)
# Converting the "Chick" variable into factor from ord.factor for demonstration purposes.
ChickWeight$Chick <- as.factor(as.numeric(ChickWeight$Chick))
# Returns a dataframe with two added columns for "Chick" and "Diet"
head(ctoc(y = "weight", x = c("Chick","Diet"), data = ChickWeight, min.obs = 12))

# using tbin
train = as.data.frame(cbind(runif(1000, 10, 1000),sample(1:40, 1000,TRUE)))
colnames(train) = c("response","state")
train$state = as.factor(train$state)
train.output = tbin(dv = "response",idv = c("state"),train,25,TRUE)
}