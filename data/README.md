# 📁 Diretório `data/`

Este diretório contém os **arquivos de dados da pesquisa**, utilizados na **revisão sistemática com meta-análise e meta-regressão**.

## 📌 Conteúdo

- Arquivos em formato `.csv` ou `.xlsx` com os dados extraídos dos artigos incluídos na revisão.
- Cada arquivo representa uma etapa ou aspecto da análise, como:
  - `PubMed_Timeline_Results_by_Year.csv`: histórico de resultados por ano na PubMed.
  - `data_extraction_Ultimo.xlsx`: compilado de análises em relação aos estudos selecionados.
  - `QUADAS-2_modificado_well_2025.xlsx`: compilado de análises dos estudos selecionados, seguindo uma adaptação do QUADAS-2.
  - `quadas_adaptado_aplicability_concerns.csv`: compilado de resultados QUADAS-2, relacionados a Aplicabilidade.
  - `quadas_adaptado_risk_of_bias.csv`: compilado de resultados QUADAS-2, relacionados a Risco de Viés.

## 📊 Finalidade

Esses arquivos servem como **base para análise estatística** em R ou Python. Eles são usados pelos scripts presentes na pasta `meta-analysis/`.

## ⚠️ Observações

- Os dados foram extraídos manualmente e/ou por ferramentas automatizadas.
- Sempre realizado o cruzamento com os artigos originais para verificação.
- Certifique-se de manter a integridade e a estrutura dos arquivos para garantir a reprodutibilidade dos resultados.

---

