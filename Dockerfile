# Docker inheritance
FROM rocker/rstudio:4.0.3

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	&& apt-get install -y --no-install-recommends \
	zlib1g-dev libfftw3-dev \
	## Remove packages in '/var/cache/' and 'var/lib'
	## to remove side-effects of apt-get update
	&& apt-get clean \
	&& rm -rf /var/lib/apt/ilists/* 

RUN R -e 'install.packages("BiocManager")'
RUN R -e 'BiocManager::install(version = "3.12", update = TRUE, ask = FALSE)'
RUN R -e 'BiocManager::install(c("cytomapper", "workflowr", "dplyr", "tidyverse", "devtools"))'

RUN mkdir /home/rstudio/cytomapper_publication

COPY . /home/rstudio/cytomapper_publication

RUN mkdir /home/rstudio/cytomapper_publication/docs/final_figures
RUN mkdir /home/rstudio/cytomapper_publication/docs/final_figures/main

RUN chown rstudio -R /home/rstudio/cytomapper_publication
