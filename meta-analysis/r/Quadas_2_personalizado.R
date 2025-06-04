library(ggplot2)
library(tidyr)
library(dplyr)
library(readr)
library(cowplot)

# Lê o CSV
df <- read_csv("quadas_adaptado_risk_of_bias.csv")

#Nome dos arquivos .csv:
#quadas_adaptado_risk_of_bias -> Analise Risco de Viés
#quadas_adaptado_aplicability_concerns -> Analise Aplicabilidade

# Nomes completos dos domínios
domain_full <- c(
  "Patient Selection",
  "Index Testing and Preprocessing",
  "Reference Standard",
  "Flow and Timing",
  "Data Robustness",
  "Interpretability"
)

# Rótulos curtos
domain_labels <- c("D1", "D2", "D3", "D4", "D5", "D6")

# Mapeia nomes
names(domain_full) <- names(df)[-1]
names(domain_labels) <- names(df)[-1]

# Dados longos
df_long <- pivot_longer(df, -Study, names_to = "Domain", values_to = "Judgment")
df_long$Judgment <- factor(df_long$Judgment,
                           levels = c("Low", "Some Concerns", "High", "No Information"))

# ---- GRÁFICO 1: BARRAS HORIZONTAIS ----
df_long_full <- df_long %>%
  mutate(Domain_desc = domain_full[Domain])

df_long_full$Domain_desc <- factor(df_long_full$Domain_desc,
                                   levels = unique(df_long_full$Domain_desc))

p1 <- ggplot(df_long_full, aes(x = Domain_desc, fill = Judgment)) +
  geom_bar(position = "fill", width = 0.6) +
  coord_flip() +
  scale_y_continuous(labels = scales::percent_format()) +
  scale_fill_manual(values = c("Low" = "#4CAF50",
                               "Some Concerns" = "#FFC107",
                               "High" = "#F44336",
                               "No Information" = "#BDBDBD")) +
  geom_segment(aes(x = 0, xend = 0, y = -0.02, yend = 1.02), 
               inherit.aes = FALSE, color = "black", size = 0.5) +
  theme_minimal(base_family = "Arial") +
  theme(
    panel.grid = element_blank(),
    axis.text.y = element_text(margin = margin(r = -15)),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.text.x = element_text(face = "bold"),
    axis.ticks.x = element_line(),
    plot.margin = margin(t = 10, r = 10, b = 10, l = 10),
    legend.box.background = element_rect(color = "black", fill = NA, size = 0.5),
    legend.position = "bottom"
  )

# Exibir gráfico 1
print(p1)

# ---- GRÁFICO 2: SEMÁFORO ----
df_long$Domain <- factor(df_long$Domain,
                         levels = names(domain_labels),
                         labels = domain_labels)
df_long$Study <- factor(df_long$Study, levels = unique(df_long$Study))

g <- ggplot(df_long, aes(x = Domain, y = Study, fill = Judgment)) +
  geom_tile(color = "white", linewidth = 0.5) +
  scale_fill_manual(values = c("Low" = "#4CAF50",
                               "Some Concerns" = "#FFC107",
                               "High" = "#F44336",
                               "No Information" = "#BDBDBD")) +
  labs(title = "Risk of Bias",
       x = "Domains",
       y = "References",
       fill = "Judgment") +
  theme_minimal(base_family = "Arial") +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    axis.text.x = element_text(angle = 45, hjust = 1),
    plot.title = element_text(hjust = 0.5, face = "bold"),
    legend.box.background = element_rect(color = "black", fill = NA, size = 0.5),
    legend.position = "right"
  )

# Texto da legenda explicativa
text_legend <- paste(
  "Domains:",
  "D1: Patient selection",
  "D2: Index test and preprocessing",
  "D3: Reference standard",
  "D4: Flow & timing",
  "D5: Data robustness",
  "D6: Interpretability",
  sep = "\n"
)

# Junta gráfico e legenda
final_plot <- ggdraw() +
  draw_plot(g, 0, 0.25, 1, 0.75) +
  draw_text(text_legend, x = 0.01, y = 0.22, hjust = 0, vjust = 0.9, size = 10, fontface = "italic")

# Exibe o gráfico final
print(final_plot)
