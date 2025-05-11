# 📁 Diretório `meta-analysis/`

Este diretório contém todos os scripts utilizados para realizar as análises estatísticas da revisão sistemática com meta-análise e meta-regressão. As análises foram realizadas em **R** e **Python**, e estão organizadas em duas subpastas principais:

**Observação: Foi aplicado o modelo de efeitos aleatórios DerSimonian-Laird, visto a alta heterogeneidade real dos estudos**
---

## 🧮 `meta-analysis/R/`: Análises Estatísticas em R

Esta subpasta contém scripts em R utilizados para:

- Cálculo da **heterogeneidade** das métricas de desempenho (Acurácia, Sensibilidade, Precisão e F1-score), incluindo:
  - Estatísticas Q, I² e p-value
- Execução de **meta-análise DerSimonian-Laird** com o pacote `metafor`
- Construção de **funnel plots** (com contornos de significância)
- Aplicação de testes de viés de publicação:
  - Teste de Egger
  - Trim-and-Fill
  - Teste de Correlação de Postos (Begg e Mazumdar)
- Avaliação de influência dos estudos e análise de sensibilidade (remoção de estudos individuais)

Esses scripts possibilitam uma avaliação robusta dos resultados agregados e da consistência entre os estudos.

---

## 📊 `meta-analysis/python/`: Visualizações com Python (Jupyter Notebooks)

Esta subpasta contém notebooks em Python usados para:

- Geração de **gráficos de floresta (forest plots)** para cada métrica de desempenho:  
  - Acurácia  
  - Sensibilidade  
  - Precisão  
  - F1-score  
- **Análises por subgrupos**, segmentando os resultados por:
  - Tipo de Técnica de IA (CNN, XGBoost, etc.)
  - Tipo de Doença (ex: câncer de pele, Doença Arterial Coronariana (CAD), malária)
- **Gráficos de dispersão (scatter plots)** relacionando o **tamanho da amostra** com as métricas de desempenho
- Visualização dos **efeitos estimados por técnica** (comparando técnicas como XGBoost, Random Forest, etc. com a CNN como referência)

Essas visualizações ajudam a interpretar os resultados da meta-análise de forma clara e intuitiva.

---

## 🧰 Bibliotecas e Ferramentas Utilizadas

- **R**: `metafor`
- **Python**: `statsmodels`, `pandas`, `numpy`, `matplotlib`, `math`, `os`

---


