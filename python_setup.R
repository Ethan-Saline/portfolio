library(reticulate)

# Install Miniconda if not already installed
install_miniconda()

# Create conda env
conda_create("r-tf", packages = c("python=3.10"))

# Activate env
use_condaenv("r-tf", required = TRUE)

conda_install(
  envname = "r-tf",
  packages = c(
    "tensorflow",
    "numpy",
    "scikit-learn",
    "matplotlib",
    "seaborn",
    "pillow",
    "kaggle"
  ),
  pip = TRUE 
)
