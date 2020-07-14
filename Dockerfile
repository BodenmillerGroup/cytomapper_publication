# Docker inheritance
FROM rocker/rstudio:4.0.2

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
RUN R -e 'BiocManager::install(c("cytomapper", "workflowr"))'

COPY --chown=rstudio . /home/rstudio
