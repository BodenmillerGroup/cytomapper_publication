library(SingleCellMapper)
library(Cardinal)

data("pancreasImages")

# Images of different dimensions
test1 <- pancreasImages[[1]][1:10,1:10,1:3]

ImageList(list(test1, pancreasImages[[2]]))
SparseImagingExperiment(list(test1, pancreasImages[[2]]))

# AnnotatedImage
test_aImage <- AnnotatedImage(pancreasImages[[1]])

# ImageList
test_aImage <- ImageList(as(pancreasImages, "SimpleList"))

# SparseImagingExperiment
test_aImage <- SparseImagingExperiment(as(pancreasImages, "SimpleList"))
