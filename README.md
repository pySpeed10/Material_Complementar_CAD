# 📊 Meta-Análise de Técnicas de IA em Sistemas CAD na Medicina de Precisão

Este repositório reúne os códigos, gráficos, dados extraídos e informações da meta-análise conduzida sobre técnicas de Aprendizado de Máquina e Visão Computacional aplicadas a sistemas CAD (Computer-Aided Diagnosis) na medicina de precisão.

## 📌 Objetivos

- Identificar as principais técnicas de IA em CADs.
- Avaliar desempenho médio por técnica (CNN, XGBoost etc.).
- Mapear os datasets mais utilizados por tipo de imagem e doença.

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

## 📄 Quadro-resumo dos principais datasets por tipo de imagem e doença

| Nome do Dataset        | Tipo de Imagem    | Modalidade         | Doença                      | Link                         | Acessível? |
|------------------------|-------------------|---------------------|-----------------------------|------------------------------|------------|
| Mini-DDSM              | Mamografia        | 2D                  | Câncer de mama              | [Link](https://wiki.cancerimagingarchive.net/display/Public/Mini-DDSM) | ✅         |
| HAM10000               | Dermatológica     | Foto digital        | Câncer de pele (melanoma)   | [Link](https://www.kaggle.com/datasets/kmader/skin-cancer-mnist-ham10000) | ✅         |
| DRIVE                  | Fundoscopia       | 2D                  | Retinopatia diabética       | [Link](https://drive.grand-challenge.org/) | ✅         |
| ChestX-ray14           | Raio-X torácico   | 2D                  | Doenças pulmonares (COVID, Pneumonia) | [Link](https://www.kaggle.com/datasets/nih-chest-xrays/data) | ✅         |
| BraTS                  | Ressonância       | Volumétrica (3D)    | Tumores cerebrais           | [Link](https://www.med.upenn.edu/cbica/brats2020/data.html) | ✅         |
| ISIC 2018              | Dermatológica     | Foto digital        | Lesões cutâneas             | [Link](https://challenge.isic-archive.com/) | ✅         |
| TCGA-LGG               | Ressonância (MRI) | Volumétrica (3D)    | Gliomas cerebrais           | [Link](https://www.cancer.gov/ccg/research/genome-sequencing/tcga) | ✅         |
| COVID-CTset            | Tomografia        | 2D                  | COVID-19                    | [Link](https://github.com/UCSD-AI4H/COVID-CT) | ✅         |

---

## 📘 Como citar este repositório

**Oliveira, W. H. A.** (2025). *Meta-análise de técnicas de IA em sistemas CAD para medicina de precisão*. Repositório GitHub com dados e scripts de reprodutibilidade.  
Disponível em: ()

---

## 📬 Contato

Para dúvidas, colaborações ou sugestões, envie um e-mail para whaop10@unifei.edu.br

