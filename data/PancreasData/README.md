# Pancreas data (Imaging Mass Cytometry)

This folder is used to store the example data from the pancreas dataset after
running the `01-LoadPancreasData.Rmd` and the `02-LoadPancreasImages.Rmd` R
scripts.

The `01-LoadPancreasData.Rmd` script generates a `SingleCellExperiment` object:  
- `pancreas_sce.rds`:  contains the single cell data.

The `02-LoadPancreasImages.Rmd` generates two `CytoImageList` objects:  
- `pancreas_images.rds`: contains the multiplexed images.
- `pancreas_masks.rds`: contains the cell masks.

These files form a 100 image dataset that is used to illustrate the `cytomapper`
package in the associated publication.
This data is read in to perform the different parts of the analysis.
