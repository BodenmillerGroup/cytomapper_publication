# Example data

The scripts contained in the `Preprocessing` folder can be run to download the
data and to generate the datasets used to illustrate the `cytomapper` package.

## List of example datasets

- Pancreas data (Imaging Mass Cytometry)


## Pancreas data (Imaging Mass Cytometry)

Raw Imaging Mass Cytometry (IMC) data are computationally processed using a
segmentation pipeline (available at https://github.com/BodenmillerGroup/ImcSegmentationPipeline).
This produces image stacks containing the raw pixel values for > 35 channels,
masks containing the segmented cells, cell-level expression, metadata
information as well as a number of image-level meta information.

The dataset used here is associated with the publication [A Map of Human Type 1 Diabetes Progression by Imaging Mass Cytometry](https://doi.org/10.1016/j.cmet.2018.11.014)
and is available from Mendeley Data: [http://dx.doi.org/10.17632/cydmwsfztj.2](http://dx.doi.org/10.17632/cydmwsfztj.2).

### Downloading and preparing the dataset

The dataset can be downloaded and saved using the `1_LoadPancreasData.Rmd` and
the `2_LoadPancreasImages.Rmd` scripts.

The `1_LoadPancreasData.Rmd` script generates a `SingleCellExperiment` object:  
- `pancreas_sce.rds`:  contains the single cell data.

The `2_LoadPancreasImages.Rmd` generates two `CytoImageList` objects:  
- `pancreas_images.rds`: contains the multiplexed images.
- `pancreas_masks.rds`: contains the cell masks.

These files are saved in the `PancreasData` subfolder and form a dataset
comprising a hundred multiplexed images that each contain 38 channels, as well
as the associated single-cell data. This represents a subset of the original
publication data set, which contains 845 images. The full dataset is also
available from Mendeley Data.
