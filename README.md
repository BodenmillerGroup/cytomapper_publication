# Cytomapper paper

The scripts contained in this repository serve the purpose of testing, validating and publishing the [cytomapper](https://www.bioconductor.org/packages/release/bioc/html/cytomapper.html) package.

## Setting up the environment

For reproducibility purposes, we use [Docker](https://www.docker.com/) and [workflowr](https://jdblischak.github.io/workflowr/index.html) to organize the scripts and the computational environment.
Please follow these steps to set-up and run the analysis presented in this repository:

1. Install [Docker](https://docs.docker.com/get-docker/)
2. Pull the [docker image](https://hub.docker.com/repository/docker/nilseling/bioconductor_cytomapper/tags?page=1)

```
docker pull nilseling/bioconductor_cytomapper:0.0.1
```

3. Run the docker image

```
docker run -e PASSWORD=bioc -p 8787:8787 nilseling/bioconductor_cytomapper:0.0.1
```

Here, the set `PASSWORD` is bioc. This will be used to login to RStudio later.

4. Open a browser window at `http://localhost:8787/`
5. Sign in to RStudio using `Username: rstudio` and `Password: bioc`

You have now a running instance of all the software needed to reproduce the analysis.

## Running the code

The following steps will guide you through running the analsysis:

1. Within RStudio, navigate to `cytmapper_publication`
2. By clicking `cytomapper_publication.Rproj`, open the correct R project
3. Navigate to `analysis` and run the scripts in the provided order

Further instructions can be found in the individual scripts.

## Installing `cytomapper`

The `cytomapper` version used for the bioRxiv submission can be installed via:

```r
install.packages(c("devtools", "workflowr", "tidyverse"))
devtools::install_github("BodenmillerGroup/cytomapper@v1.1.2")
```

The Bioconductor release version of `cytomapper` can be obtained from [Bioconductor](https://www.bioconductor.org/packages/release/bioc/html/cytomapper.html).
The following code will also install additional packages needed to perform the analysis.

```r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(c("cytomapper", "workflowr", "tidyverse"))
```

The Bioconductor development version of `cytomapper` can be installed via:

```r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(version = "3.12", update = TRUE, ask = FALSE)

BiocManager::install(c("cytomapper", "workflowr", "tidyverse"))
```

## Data

The example dataset has been published in:
[https://www.cell.com/cell-metabolism/fulltext/S1550-4131(18)30691-0](https://www.cell.com/cell-metabolism/fulltext/S1550-4131(18)30691-0)

The dataset is available for download from Mendeley Data: [http://dx.doi.org/10.17632/cydmwsfztj.2](http://dx.doi.org/10.17632/cydmwsfztj.2)

Specifically, the following files are used in the current analysis:
- `CellSubset`: Single cell data for a subset of 100 images from the original publication.
- `ImageSubset`: Image stacks for a subset of 100 images from the original publication.
- `Masks`: Cell masks as TIFF files.
- `Image`: Image metadata.
- `CellTypes`: Cell type information.
- `Donors`: Pancreas donors metadata.
- `Panel`: Antibody panel.
- `ChannelMass`: File used to match channels (stack slices) and metals (antibodies).

For more information, please refer to the [data](data) folder.
