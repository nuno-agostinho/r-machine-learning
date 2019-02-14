FROM r-base:latest
MAINTAINER Nuno Agostinho <nunodanielagostinho@gmail.com>

RUN apt-get update
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages('caretEnsemble')"
RUN Rscript -e "install.packages('glmnet')"
RUN Rscript -e "install.packages('Matrix')"
RUN Rscript -e "install.packages('gbm')"
RUN Rscript -e "install.packages('randomForest')"
RUN Rscript -e "install.packages('arm')"
RUN Rscript -e "install.packages('nnet')"
RUN Rscript -e "install.packages('neuralnet')"
RUN Rscript -e "install.packages('e1071')"
RUN Rscript -e "install.packages('frbs')"
RUN Rscript -e "install.packages('mgcv')"
RUN Rscript -e "install.packages('kernlab')"
RUN Rscript -e "install.packages('brnn')"
RUN Rscript -e "install.packages('rpart')"
RUN Rscript -e "install.packages('pls')"