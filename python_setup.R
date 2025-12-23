library(reticulate)

# Install Miniconda if not already installed
install_miniconda()

# Remove broken env if redoing
conda_remove("r-tf")

# Create clean env
conda_create(
  "r-tf",
  packages = c("python=3.10")
)

use_condaenv("r-tf", required = TRUE)

conda_install(
  "r-tf",
  packages = c(
    "tensorflow==2.13.*",
    "numpy",
    "scikit-learn",
    "matplotlib",
    "seaborn",
    "pillow",
    "kaggle"
  ),
  pip = TRUE
)
