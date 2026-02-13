# Social Networks Structure

Repository for the **Social Networks Structure** coursework (2023-20) at Universidad de los Andes, Department of Industrial Engineering.

## Course Overview

This course explores the fundamental concepts behind social network analysis, including network sampling, structural properties, community detection, diffusion models, and predictive modeling on networks.

---

## Workshop 1 — Network Sampling Methods

**Objective:** Compare random sampling vs. snowball sampling for capturing network structure.

**Context:** Based on a dataset of 2,111 children from Colombia, Peru, and Mexico (Mendoza-Palechor & de la Hoz-Manotas, 2019) with obesity-level estimations based on eating habits and physical activity. The goal is to identify the most influential children who could promote a physical activity program among their peers, under a limited budget.

**Topics covered:**
- Sample size calculation with confidence and margin of error parameters
- Stratified random sampling by gender
- Snowball sampling implementation
- Network reconstruction from sampled nodes
- Comparison of influencer identification across both sampling methods using centrality metrics (degree, eigenvector centrality, betweenness, closeness, PageRank, clustering)
- Network export to Gephi for visualization and community detection using the Louvain algorithm
- Modularity analysis and community strength evaluation

**Tools:** Python (NetworkX, pandas, matplotlib, scipy), Gephi

---

## Workshop 2 — Structural Properties & Community Detection

**Objective:** Evaluate network properties through structural measures and topology analysis.

**Context:** Analysis of the Star Wars character interaction network extracted from movie scripts (Episodes I–VII). Two characters are connected if they spoke in the same scene. The network is undirected and weighted by the number of shared scenes.

**Topics covered:**
- Network construction and visualization with Matplotlib
- Network diameter and connectivity analysis
- Density calculation and interpretation in context (Light Side vs. Dark Side dynamics)
- Community detection using the Louvain method
- Normalized Mutual Information (NMI) between character factions (Jedi/Sith) and detected communities
- Betweenness centrality — identifying bridge characters
- Internal vs. external degree computation for each node
- Role classification (Central, Broker, Influencer, Ambassador, Micro-influencer) based on the 75th percentile of network metrics
- Strategic node removal to shift faction power balance

**Tools:** Python (NetworkX, python-louvain, scikit-learn, matplotlib, numpy)

---

## Workshop 3 — Longitudinal Network Analysis & Autocorrelation Models

**Objective:** Analyze friendship network evolution over time and model network autocorrelation.

**Context:** A friendship network among 50 students observed at two time points (t=1 and t=2), along with behavioral attributes (alcohol consumption, drug use, smoking, and sports participation).

**Topics covered:**
- Network construction from adjacency data at two time points
- Density and clustering coefficient comparison across time
- Connected component analysis
- Network efficiency calculation
- Average degree evolution over time
- Cross-tabulation of behavioral attributes (smoking vs. sports)
- Adjacency matrix, attribute matrix, and response variable export for modeling
- Linear Network Autocorrelation Model (LNAM) in R using the `ergm` and `sna` packages

**Tools:** Python (NetworkX, pandas), R (sna, ergm, igraph)

---

## Workshop 4 — Diffusion & Propagation on Networks

**Objective:** Evaluate the relationship between network structure and diffusion/propagation dynamics.

**Context:** A Marvel superhero network where a zombie virus outbreak is simulated. The diffusion model incorporates blood-type-based assortativity to determine infection probability between characters, along with network-based neighbor selection using edge weights.

**Topics covered:**
- SI (Susceptible-Infected) diffusion model simulation
- SIR (Susceptible-Infected-Recovered) epidemic model with recovery probability after a 5-day incubation period
- Assortativity matrix based on blood type compatibility
- Importance function combining edge weights and assortativity for neighbor selection
- Vaccination strategies:
  - **Strategy 1:** VoteRank-based node immunization
  - **Strategy 2:** Closeness centrality-based node immunization
- Comparative simulation of vaccination strategies to minimize outbreak spread

**Tools:** Python (NetworkX, numpy, matplotlib, pickle, tqdm)

---

## Workshop 5 — Predictive Models for Network Behavior

**Objective:** Build predictive models to infer future network behavior and propose actionable recommendations.

**Context:** A cryptocurrency transaction network from a fictional company "Crypto Club", with transaction data spanning several months. The goal is to analyze network evolution, predict future links, and propose business strategies.

**Topics covered:**
- Temporal network evolution analysis (nodes, edges, average degree, clustering coefficient, diameter, betweenness centrality over time)
- Link prediction using the **Jaccard Index** (neighbor-based approach)
- Link prediction using the **Katz Index** (path-based approach with sigmoid transformation)
- Confusion matrix evaluation of prediction methods
- Analysis of prediction limitations when new nodes enter the network
- Business strategy recommendations based on network insights (marketing segmentation, service expansion, intermediation monitoring, network diversification)

**Tools:** Python (NetworkX, pandas, matplotlib, seaborn, scikit-learn, numpy, scipy)

---

## Repository Structure

```
├── Taller 1/                # Workshop 1: Network Sampling
│   ├── Notebook.ipynb
│   ├── nodos_base.csv
│   ├── arcos_base.csv
│   └── Anexos/              # Gephi exports & visualizations
├── Taller 2/                # Workshop 2: Structural Properties
│   ├── Taller 2 - Modulo 2.ipynb
│   ├── Nodes_SW.csv
│   └── Edges_SW.csv
├── Taller 3/                # Workshop 3: Longitudinal Analysis
│   ├── Taller 3.ipynb
│   ├── Taller 3.R
│   ├── W_matrix_t2.csv
│   ├── X_matrix_t2.csv
│   └── y_column_t2.csv
├── Taller 4/                # Workshop 4: Diffusion Models
│   └── Taller 4.ipynb
├── Taller 5/                # Workshop 5: Predictive Models
│   ├── Taller 5.ipynb
│   └── network_data.csv
└── README.md
```

## Tech Stack

- **Python 3** — primary language for network analysis
- **NetworkX** — graph construction and analysis
- **pandas** — data manipulation
- **matplotlib / seaborn** — visualization
- **scikit-learn** — NMI and confusion matrix evaluation
- **R** — network autocorrelation models (LNAM, ERGM)
- **Gephi** — network visualization and community detection