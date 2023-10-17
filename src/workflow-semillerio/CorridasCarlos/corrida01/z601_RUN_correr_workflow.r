# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/Experimento2/711_CA_reparar_dataset.r")
source("~/dm2023b/srcworkflow-semillerio/Experimento2/721_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow-semillerio/Experimento2/731_FE_historia.r")
source("~/dm2023b/src/workflow-semillerio/Experimento2/741_TS_training_strategy.r")
source("~/dm2023b/src/workflow-semillerio/Experimento2/751_HT_lightgbm.r")
source("~/dm2023b/src/workflow-semillerio/Experimento2/795_ZZ_final_semillerio.r")