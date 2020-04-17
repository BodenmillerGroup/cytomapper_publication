# Pancreas data (Imaging Mass Cytometry)

This folder is used to store the example data from the pancreas dataset after
running the `1_LoadPancreasData.Rmd` and the `2_LoadPancreasImages.Rmd` R
scripts.

The `1_LoadPancreasData.Rmd` script generates a `SingleCellExperiment` object:  
- `pancreas_sce.rds`:  contains the single cell data.

The `2_LoadPancreasImages.Rmd` generates two `CytoImageList` objects:  
- `pancreas_images.rds`: contains the multiplexed images.
- `pancreas_masks.rds`: contains the cell masks.

These files form a 100 image dataset that is used to illustrate the `cytomapper`
package in the associated publication.
