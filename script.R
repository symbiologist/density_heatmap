## Individual target density plots
source <- '/media/data4/shared/ipsc_manuscript/analysis/perturbseq/output/density/normalized_density'
dest <- '/media/data4/shared/density_heatmap/plots/v2'

dir.create(dest, showWarnings = FALSE, recursive = TRUE)

file.copy(from = list.files(source, full.names = TRUE),
          to = dest,
          overwrite = TRUE)


## Parameter testing
source <- '/media/data4/shared/ipsc_manuscript/analysis/perturbseq/output/density/parameter_testing/'
dest <- '/media/data4/shared/density_heatmap/plots/parameter_testing'

dir.create(dest, showWarnings = FALSE, recursive = TRUE)

file.copy(from = list.files(source, full.names = TRUE),
          to = dest,
          overwrite = TRUE)

library(tidyverse)
library(googledrive)
library(googlesheets4)
options(httr_oob_default=TRUE)

#drive_find(pattern = 'Overarching Plan: human neural lncRNA', type = 'spreadsheet')
ss <- drive_get('Overarching Plan: human neural lncRNA')

### Write to googlesheets
parameter_table <- read_tsv('plots/parameter_testing/parameter_table.tsv')

write_sheet(parameter_table, ss = ss, sheet = "density_parameters")


