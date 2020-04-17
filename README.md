# cytomapper_publication

Scripts for testing and validating the cytomapper package.


## Data
The example dataset is
(https://www.cell.com/cell-metabolism/fulltext/S1550-4131(18)30691-0)

The data is available from Mendeley Data: http://dx.doi.org/10.17632/cydmwsfztj.2

Specifically, the following files are used:
- [`CellSubset`](): Single cell data for a subset of 100 images from the original publication.
- [`ImageSubset`](): Image stacks for a subset of 100 images from the original publication.
- [`Masks`](): Cell masks as TIFF files.
- [`Image`](): Image metadata.
- [`CellTypes`](): Cell type information.
- [`Donors`](): Pancreas donors metadata.
- [`Panel`](): Antibody panel.
- [`ChannelMass`](): File used to match channels (stack slices) and metals (antibodies).


## How to load the data
Preprocessing folder
- LoadPancreasData:
- LoadImages:
- LoadMasks:


## Tests
- Comparison with the `cardinal` package.
