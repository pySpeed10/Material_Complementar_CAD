# 📁 Diretório `python/`

Este diretório contém todos os notebooks em Python usados para:

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

## 🧰 Bibliotecas e Ferramentas Utilizadas

- **Python**: `statsmodels`, `pandas`, `numpy`, `matplotlib`, `math`, `os`

> Este diretório é essencial para reproduzir as análises estatísticas e gráficas da pesquisa, promovendo transparência e reprodutibilidade científica.


