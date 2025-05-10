# 📊 Meta-Análise de Técnicas de IA em Sistemas CAD na Medicina de Precisão

Este repositório reúne os códigos, gráficos, dados extraídos e informações da meta-análise conduzida sobre técnicas de Aprendizado de Máquina e Visão Computacional aplicadas a sistemas CAD (Computer-Aided Diagnosis) na medicina de precisão.

## 📌 Objetivos

- 
- 
- 

## 📂 Estrutura do Repositório

- `meta-analysis/`: Scripts em R usados para meta-análise e meta-regressão.
- `python/`: Scripts de geração de gráficos de floresta com `statsmodels`.
- `data/`: Arquivo CSV com resumo dos datasets usados nos artigos analisados.
- `docs/`: PDF do artigo completo e apresentações.
- `papers/`: Lista dos artigos incluídos na revisão sistemática.
- `.bib/`: Arquivo BibTeX com todas as referências citadas.

## 📊 Resultados principais

- CNNs apresentaram o maior F1-score médio (0.91)
- Heterogeneidade menor nas técnicas baseadas em CNN, sugerindo estabilidade entre estudos.
- Lacunas identificadas: ausência de validação externa, baixo uso de Explainable AI (XAI), pouca representação de populações da América Latina e África.

## 📁 Datasets mapeados

Veja o resumo completo abaixo.

---

## 📄 Quadro-resumo dos principais datasets - Análise de Qualidade Parsifal

| Nome do Dataset                     | Tipo de Imagem              | Modalidade                         | Doença                                            | Link                                                                                      | Acessível? |
|------------------------------------|-----------------------------|------------------------------------|---------------------------------------------------|-------------------------------------------------------------------------------------------|------------|
| HAM10000                           | Dermatológica               | Dermatoscopia                      | Câncer de pele                                    | https://www.kaggle.com/kmader/skin-cancer-mnist-ham10000                                  | Sim        |
| COVID-Chestxray set                | Radiográfica (peito)        | Raio-X                             | COVID-19                                          | https://github.com/ieee8023/covid-chestxray-dataset                                       | Sim        |
| Kaggle Chest X-Ray Dataset         | Radiográfica (peito)        | Raio-X                             | Pneumonia / COVID-19                              | https://www.kaggle.com/paultimothymooney/chest-xray-pneumonia                             | Sim        |
| ISIC 2017                          | Dermatológica               | Dermatoscopia                      | Câncer de pele (melanoma, nevus, etc.)            | https://challenge.isic-archive.com/data                                                   | Sim        |
| ISIC 2018                          | Dermatológica               | Dermatoscopia                      | Câncer de pele                                    | https://challenge.isic-archive.com/data                                                   | Sim        |
| PH2                                | Dermatológica               | Dermatoscopia                      | Melanoma                                          | https://www.fc.up.pt/addi/ph2%20database.html                                              | Sim        |
| DRIVE                              | Retinografia                 | Fundo de olho                      | Retinopatia diabética                             | https://drive.grand-challenge.org                                                         | Sim        |
| GEO (Gene Expression Omnibus)     | Genômico / Expressão gênica | Microarray / RNA-seq               | Diversas (ex: câncer, doenças cardíacas)          | https://www.ncbi.nlm.nih.gov/geo/                                                         | Sim        |
| TCGA                               | Histopatológico / Genômico  | Diversos (WGS, RNA-seq, etc.)      | Câncer (múltiplos tipos)                          | https://www.cancer.gov/ccg/research/genome-sequencing/tcga                                 | Sim        |
| GTEx                               | Genômico / Transcriptoma    | RNA-seq                            | Variações genéticas em tecidos saudáveis          | https://gtexportal.org/home/                                                              | Sim        |
| Z-Alizadeh Sani                    | Dados clínicos              | ECG / Clínico                      | Doença arterial coronariana (CAD)                 | https://archive.ics.uci.edu/dataset/412/z+alizadeh+sani                                   | Sim        |
| GDSC                               | Genômico / Quimioterápico   | Drug sensitivity + Genômica        | Câncer                                            | https://www.cancerrxgene.org/                                                             | Sim        |
| COVID-19 Radiography Dataset       | Radiográfica (peito)        | Raio-X                             | COVID-19                                          | https://www.kaggle.com/tawsifurrahman/covid19-radiography-database                        | Sim        |
| MTBLS3444                          | Metabolômico                | LC-MS / NMR                        | COVID-19                                          | https://www.ebi.ac.uk/metabolights/MTBLS3444                                              | Sim        |
| MTBLS1129                          | Metabolômico                | LC-MS / NMR                        | COVID-19                                          | https://www.ebi.ac.uk/metabolights/MTBLS1129                                              | Sim        |
| PR000918                           | Metabolômico                | LC-MS                              | COVID-19                                          | https://www.metabolomicsworkbench.org/data/DRCCMetadata.php?Mode=Study&StudyID=PR000918   | Sim        |

---

## 📘 Como citar este repositório

**Oliveira, W. H. A.** (2025). *Meta-análise de técnicas de IA em sistemas CAD para medicina de precisão*. Repositório GitHub com dados e scripts de reprodutibilidade.  
Disponível em: (https://github.com/pySpeed10/Material_Complementar_CAD)

---

## 📬 Contato

Para dúvidas, colaborações ou sugestões, envie um e-mail para whaop10@unifei.edu.br

