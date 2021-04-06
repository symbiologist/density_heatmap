source <- '/media/data4/shared/ipsc_manuscript/analysis/perturbseq/output/density/normalized_density'
dest <- '/media/data4/shared/density_heatmap/plots/v2'

dir.create(dest, showWarnings = FALSE, recursive = TRUE)

file.copy(from = list.files(source, full.names = TRUE),
          to = dest,
          overwrite = TRUE)