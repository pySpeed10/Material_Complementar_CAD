# 📊 Meta-Análise de Técnicas de IA em Sistemas CAD na Medicina de Precisão

Este repositório reúne os códigos, gráficos, dados extraídos e informações da meta-análise conduzida sobre técnicas de Aprendizado de Máquina e Visão Computacional aplicadas a sistemas CAD (Computer-Aided Diagnosis) na medicina de precisão.

## 📌 Objetivos do Material Complementar

- Auxiliar a comunidade acadêmica com insights reprodutivéis e transparentes
- Estimular o compartilhamento de Datasets

## 📂 Estrutura do Repositório

- Material_Complementar_CAD/
│
├── data/
│ └── Arquivos CSV e Excel com informações dos artigos analisados.
│
├── docs/
│ └── PDF do artigo completo e apresentações.
│
├── meta-analysis/
│ ├── r/
│ │ └── Scripts em R usados para meta-análise e meta-regressão.
│ │ Contém cálculos de heterogeneidade (acurácia, sensibilidade, precisão, F-score),
│ │ modelos de efeitos aleatórios DerSimonian-Laird, e outras análises estatísticas.
│ │
│ └── python/
│ └── Scripts em Jupyter Notebook para:
│ • Geração de gráficos de floresta por métrica (com statsmodels).
│ • Análise por subgrupos (técnica e doença).
│ • Cálculos de gráficos scatter para número de amostras por métrica.
│ • Gráficos de efeito estimado das técnicas de IA sobre sensibilidade, precisão e F-score (vs. CNN).
│
├── papers/
│ ├── .bib/
│ │ └── Arquivo BibTeX com todas as referências citadas, exportadas via Zotero.
| |

## 📊 Resultados principais

- CNNs apresentaram o maior F1-score médio (0.91)
- Heterogeneidade menor nas técnicas baseadas em CNN, sugerindo estabilidade entre estudos.
- Lacunas identificadas: ausência de validação externa, baixo uso de Explainable AI (XAI), pouca representação de populações da América Latina e África.

## 📁 Datasets mapeados

Veja o resumo completo abaixo.

---

## 📄 Quadro-resumo dos principais datasets - Análise de Qualidade Parsifal

| Nome do Dataset                                    | Tipo de Imagem                          | Modalidade                               | Doença                                          | Link                                                                                          | Acessível? |
|---------------------------------------------------|-----------------------------------------|------------------------------------------|-------------------------------------------------|-----------------------------------------------------------------------------------------------|------------|
| HAM10000                                           | Dermatológica                           | Dermatoscopia                            | Câncer de pele                                  | [Link](https://www.kaggle.com/kmader/skin-cancer-mnist-ham10000)                              | Sim        |
| COVID-Chestxray set                                | Radiográfica (peito)                    | Raio-X                                   | COVID-19                                        | [Link](https://github.com/ieee8023/covid-chestxray-dataset)                                   | Sim        |
| Kaggle Chest X-Ray Dataset                         | Radiográfica (peito)                    | Raio-X                                   | Pneumonia / COVID-19                            | [Link](https://www.kaggle.com/paultimothymooney/chest-xray-pneumonia)                         | Sim        |
| ISIC 2017                                          | Dermatológica                           | Dermatoscopia                            | Câncer de pele (melanoma, nevus, etc.)          | [Link](https://challenge.isic-archive.com/data)                                               | Sim        |
| ISIC 2018                                          | Dermatológica                           | Dermatoscopia                            | Câncer de pele                                  | [Link](https://challenge.isic-archive.com/data)                                               | Sim        |
| PH2                                                | Dermatológica                           | Dermatoscopia                            | Melanoma                                        | [Link](https://www.fc.up.pt/addi/ph2%20database.html)                                         | Sim        |
| DRIVE                                              | Retinografia                            | Fundo de olho                            | Retinopatia diabética                           | [Link](https://drive.grand-challenge.org)                                                     | Sim        |
| GEO (Gene Expression Omnibus)                      | Genômico / Expressão gênica             | Microarray / RNA-seq                      | Diversas (ex: câncer, doenças cardíacas)        | [Link](https://www.ncbi.nlm.nih.gov/geo/)                                                     | Sim        |
| TCGA                                               | Histopatológico / Genômico              | Diversos (WGS, RNA-seq, etc.)            | Câncer (múltiplos tipos)                        | [Link](https://www.cancer.gov/ccg/research/genome-sequencing/tcga)                            | Sim        |
| GTEx                                               | Genômico / Transcriptoma                | RNA-seq                                  | Variações genéticas em tecidos saudáveis        | [Link](https://gtexportal.org/home/)                                                          | Sim        |
| Z-Alizadeh Sani                                    | Dados clínicos                          | ECG / Clínico                            | Doença arterial coronariana (CAD)               | [Link](https://archive.ics.uci.edu/dataset/412/z+alizadeh+sani)                               | Sim        |
| GDSC                                               | Genômico / Quimioterápico               | Drug sensitivity + Genômica              | Câncer                                          | [Link](https://www.cancerrxgene.org/)                                                         | Sim        |
| COVID-19 Radiography Dataset                       | Radiográfica (peito)                    | Raio-X                                   | COVID-19                                        | [Link](https://www.kaggle.com/tawsifurrahman/covid19-radiography-database)                    | Sim        |
| MTBLS3444                                          | Metabolômico                            | LC-MS / NMR                              | COVID-19                                        | [Link](https://www.ebi.ac.uk/metabolights/MTBLS3444)                                          | Sim        |
| MTBLS1129                                          | Metabolômico                            | LC-MS / NMR                              | COVID-19                                        | [Link](https://www.ebi.ac.uk/metabolights/MTBLS1129)                                          | Sim        |
| PR000918                                           | Metabolômico                            | LC-MS                                    | COVID-19                                        | [Link](https://www.metabolomicsworkbench.org/data/DRCCMetadata.php?Mode=Study&StudyID=PR000918) | Sim        |
| EA1141                               | Ressonância Magnética (MRI)             | Ressonância Magnética                    | Câncer de mama     | [Link](https://www.cancerimagingarchive.net/collection/ea1141/)                               | Sim        |


---

## 📘 Como citar este repositório

**Oliveira, W. H. A.** (2025). *Meta-análise de técnicas de IA em sistemas CAD para medicina de precisão*. Repositório GitHub com dados e scripts de reprodutibilidade.  
Disponível em: (https://github.com/pySpeed10/Material_Complementar_CAD)

---

## 📬 Contato

Para dúvidas, colaborações ou sugestões, envie um e-mail para whaop10@unifei.edu.br

