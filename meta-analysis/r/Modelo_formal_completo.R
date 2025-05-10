# Instale os pacotes se ainda não tiver
# install.packages("metafor")

library(metafor)

# Seus dados - todos 13
fscore <- c(0.94, 0.9655, 0.9063, 0.945, 0.830693731, 0.828951724, 0.732,
            0.88, 0.9929, 0.827, 0.94, 0.9518, 0.982)
se_fscore <- c(0.001876865, 0.055028712, 0.025268529, 0.006631145, 0.032641493,
               0.015372636, 0.014310018, 0.041952354, 0.002204946, 0.006145692,
               0.045704364, 0.011448863, 0.017766341)

# === 1. Meta-análise DerSimonian-Laird com metafor ===
rma_fscore <- rma(yi = fscore, sei = se_fscore, method = "DL")
summary(rma_fscore)

# === 2. Funnel plot com contornos de significância ===
funnel(rma_fscore,
       yaxis = "sei",         # eixo y = erro padrão
       xlab = "F1-score",
       main = "Funnel Plot com Contornos de Significância")
abline(v = coef(rma_fscore), lty = 2)

# === 3. Teste de Egger ===
egger <- regtest(rma_fscore, model = "rma", predictor = "sei")
print("Teste de Egger:")
print(egger)

# === 4. Trim-and-Fill ===
taf <- trimfill(rma_fscore)
summary(taf)
funnel(taf, xlab = "F1-score (ajustado)", main = "Funnel Plot com Trim-and-Fill")

# === 5. Rank correlation test (Begg and Mazumdar) ===
rank <- ranktest(rma_fscore)
print("Teste de Correlação de Postos:")
print(rank)

inf <- influence(rma_fscore)
plot(inf)

# 1. Meta-análise original (com todos os estudos)
rma_fscore <- rma(yi = fscore, sei = se_fscore, method = "DL")
summary(rma_fscore)

# 2. Remoção do estudo 7 (sensibilidade)
fscore_sens <- fscore[-7]
se_sens <- se_fscore[-7]

rma_sens <- rma(yi = fscore_sens, sei = se_sens, method = "DL")
summary(rma_sens)

# 3. Comparar resultados
comparacao <- data.frame(
  Modelo = c("Completo", "Sem Estudo 7"),
  Estimativa = c(coef(rma_fscore), coef(rma_sens)),
  CI.Inf = c(rma_fscore$ci.lb, rma_sens$ci.lb),
  CI.Sup = c(rma_fscore$ci.ub, rma_sens$ci.ub),
  Tau2 = c(rma_fscore$tau2, rma_sens$tau2),
  I2 = c(rma_fscore$I2, rma_sens$I2),
  QEp = c(rma_fscore$QEp, rma_sens$QEp)
)

print(comparacao)

