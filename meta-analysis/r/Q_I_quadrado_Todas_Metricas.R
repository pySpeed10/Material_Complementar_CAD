# Dados
acuracia <- c(0.94, 0.96, 0.9068, 0.891, 0.773, 0.9471, 0.728, 0.875, 0.99139, 0.852, 0.96, 0.9512, 0.9876)
sens <- c(0.94, 0.9635, 0.907, 0.939, 0.762, 0.897, 0.728, 0.87, 0.9838, 0.821, 0.94, 0.9512, 0.978)
prec <- c(0.94, 0.9887, 0.9067, 0.951, 0.913, 0.7705, 0.738, 0.89, 0.9568, 0.834, 0.95, 0.9525, 0.988)
fscore <- c(0.94, 0.9655, 0.9063, 0.945, 0.830693731, 0.828951724, 0.732, 0.88, 0.9929, 0.827, 0.94, 0.9518, 0.982)

se_acuracia <- c(0.001876865, 0.061636994, 0.025207971, 0.00906449, 0.03645992, 0.009137978, 0.014376971, 0.042695628, 0.002426274, 0.0057696, 0.037712362, 0.011516269, 0.014787929)
se_sens <- c(0.001876865, 0.056542623, 0.025183686, 0.006961278, 0.03706628, 0.012409069, 0.014376971, 0.043416587, 0.003315331, 0.006228638, 0.045704364, 0.011516269, 0.019601385)
se_prec <- c(0.001876865, 0.031869492, 0.0252201, 0.006278842, 0.024530593, 0.017167302, 0.014206794, 0.040393894, 0.005339105, 0.006045498, 0.041943525, 0.011369602, 0.014550405)
se_fscore <- c(0.001876865, 0.055028712, 0.025268529, 0.006631145, 0.032641493, 0.015372636, 0.014310018, 0.041952354, 0.002204946, 0.006145692, 0.045704364, 0.011448863, 0.017766341)

# Função para calcular Q, I2 e p-valor
calc_heterogeneidade <- function(est, se) {
  var <- se^2
  peso <- 1 / var
  media_pond <- sum(peso * est) / sum(peso)
  Q <- sum(peso * (est - media_pond)^2)
  df <- length(est) - 1
  I2 <- max(0, (Q - df) / Q) * 100
  pvalor <- pchisq(Q, df, lower.tail = FALSE)
  return(list(Q=Q, I2=I2, p=pvalor))
}

# Calcular para cada métrica
res_acuracia <- calc_heterogeneidade(acuracia, se_acuracia)
res_sens <- calc_heterogeneidade(sens, se_sens)
res_prec <- calc_heterogeneidade(prec, se_prec)
res_fscore <- calc_heterogeneidade(fscore, se_fscore)

# Resultados
cat("ACURÁCIA\n")
cat("Q =", round(res_acuracia$Q, 2), " | I² =", round(res_acuracia$I2, 2), "% | p =", round(res_acuracia$p, 6), "\n\n")

cat("SENSIBILIDADE\n")
cat("Q =", round(res_sens$Q, 2), " | I² =", round(res_sens$I2, 2), "% | p =", round(res_sens$p, 6), "\n\n")

cat("PRECISÃO\n")
cat("Q =", round(res_prec$Q, 2), " | I² =", round(res_prec$I2, 2), "% | p =", round(res_prec$p, 6), "\n\n")

cat("F-SCORE\n")
cat("Q =", round(res_fscore$Q, 2), " | I² =", round(res_fscore$I2, 2), "% | p =", round(res_fscore$p, 6), "\n")
