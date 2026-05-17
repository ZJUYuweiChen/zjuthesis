# Hoffmann et al. 2022 — Training Compute-Optimal Large Language Models：Chinchilla 扩展定律

- **Authors**: Jordan Hoffmann, Sebastian Borgeaud, Arthur Mensch, Elena Buchatskaya, Trevor Cai, Eliza Rutherford, Diego de Las Casas, Lisa Anne Hendricks, Johannes Welbl, Aidan Clark, Tom Hennigan, Eric Noland, Katie Millican, George van den Driessche, Bogdan Damoc, Aurelia Guy, Simon Osindero, Karen Simonyan, Erich Elsen, Jack W. Rae, Oriol Vinyals, Laurent Sifre
- **Year**: 2022
- **Venue**: NeurIPS 2022 (DeepMind)
- **DOI/arXiv ID**: arXiv:2203.15556
- **Citations**: 5,000+
- **Source**: arXiv / DeepMind
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文（DeepMind 团队）系统性研究了**给定固定计算预算下，最优的模型参数规模 N 与训练 token 数 D 应如何分配**，从而提出著名的 **Chinchilla scaling laws**。论文指出：此前 Kaplan et al. (2020) 的 scaling laws 建议"模型规模随计算预算急剧增加而训练数据缓慢增加"，但通过训练超过 400 个模型（参数从 70M 到 16B+，训练 tokens 从 5B 到 500B），作者发现实际最优策略应为：**模型规模与训练 tokens 应等比例增长**——计算预算翻倍时，参数与数据各应翻倍。换言之，许多当时的大模型（如 175B GPT-3、530B MT-NLG、280B Gopher）都处于"参数过多、训练不足"状态。为验证此假设，作者用与 Gopher（280B）相同的计算预算训练 **Chinchilla（70B 参数，1.4 万亿 tokens）**，结果 Chinchilla 在几乎所有下游评估上**一致且显著优于 Gopher (280B)、GPT-3 (175B)、Jurassic-1 (178B) 与 MT-NLG (530B)**。MMLU 上 Chinchilla 平均准确率达 67.5%，比 Gopher 提升 7%。Chinchilla 因参数少 4 倍，推理与微调成本相应大幅降低，使下游应用更经济。Chinchilla 定律成为后续 LLaMA、Qwen、DeepSeek 等所有现代 LLM 训练方案的指导原则。

## 与本节的关联

Chinchilla 论文虽不直接提出新模型架构，却**重塑了 LLM 训练经济学的基本规则**，是支撑§2.1.2"LLM 工程化成熟"叙事的关键理论文献。引用本文可论证几点：(1) **训练经济性可知可控**——LLM 不再是"越大越好"的盲目竞赛，而成为"在固定预算下优化参数-数据比"的工程优化问题，这种可预测性使产业级 LLM 服务（如阿里云百炼）能够稳定供应；(2) **国产中小规模模型的合理性**——Qwen-7B/14B、DeepSeek-V2/V3 等开源模型遵循 Chinchilla 法则在充足数据上训练，其能力即使在中等参数规模下也能达到 GPT-3 量级——这为 AI4ADHD 项目以经济成本调用国产 LLM 提供了底层依据；(3) **数据质量与规模的重要性**——Chinchilla 强调训练 tokens 数量，间接推动业界对高质量数据集（如 RedPajama、Pile、Dolma 等）的建设；(4) **推理成本预测**——Chinchilla 视角下"训练成本"与"推理成本"分离，符合本毕设论文项目以低边际成本提供 24/7 智能陪伴服务的现实考量。
