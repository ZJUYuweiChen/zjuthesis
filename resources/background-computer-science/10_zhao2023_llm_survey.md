# Zhao et al. 2023 — A Survey of Large Language Models：大语言模型综述

- **Authors**: Wayne Xin Zhao, Kun Zhou, Junyi Li, Tianyi Tang, Xiaolei Wang, Yupeng Hou, Yingqian Min, Beichen Zhang, Junjie Zhang, Zican Dong, Yifan Du, Chen Yang, Yushuo Chen, Zhipeng Chen, Jinhao Jiang, Ruiyang Ren, Yifan Li, Xinyu Tang, Zikang Liu, Peiyu Liu, Jian-Yun Nie, Ji-Rong Wen
- **Year**: 2023（首发），持续更新至 2026（v18 版本）
- **Venue**: arXiv（中国人民大学高瓴人工智能学院主导，蒙特利尔大学合作）
- **DOI/arXiv ID**: arXiv:2303.18223
- **Citations**: 6,500+（持续高速增长）
- **Source**: arXiv / 中国人民大学
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文是大语言模型领域被引用最广、覆盖最全面的综述之一，由中国人民大学赵鑫教授团队主导编写、持续迭代更新（截至 2026 年已发布 v18 版本，是论文界少见的"持续维护型"综述）。文章首先**回顾语言模型的四个发展阶段**：统计语言模型（SLM，1990s）→ 神经语言模型（NLM，2013-）→ 预训练语言模型（PLM，BERT/GPT-2 时代）→ 大语言模型（LLM，含 GPT-3 后涌现能力的模型）。然后系统讨论 LLM 的**四大研究主轴**：(1) **预训练（Pre-training）**——数据收集与清洗、tokenization、架构选择（decoder-only 主流）、训练目标、优化策略、可扩展训练基础设施；(2) **适应性调优（Adaptation Tuning）**——指令微调（Instruction Tuning）、人类偏好对齐（RLHF/DPO）、参数高效微调（LoRA 等）；(3) **使用方式（Utilization）**——提示工程（Prompting）、上下文学习（In-Context Learning, ICL）、思维链推理（CoT）、规划与工具使用；(4) **能力评估（Capacity Evaluation）**——通用基准、专业领域评测、人类对齐评估、涌现能力分析。论文还系统整理了 LLM 资源（公开模型、API、数据集、库与框架），并讨论开放问题（幻觉、毒性、长程推理、多模态融合、智能体方向等）。是 LLM 入门与系统化研究的权威综合参考文献。

## 与本节的关联

Zhao et al. 2023 综述是§2.1.2 中梳理"从 Transformer 到现代 LLM 技术演进脉络"的**纲领性文献**。本节论述需要在有限篇幅内勾勒出 LLM 发展的全景图，引用此论文一次即可为读者提供"四阶段语言模型演进 + 四主轴技术拓展"的完整地图，避免冗长展开。具体作用：(1) **演进脉络支撑**——论文对 SLM→NLM→PLM→LLM 的清晰阶段划分，直接对应本节"从 Transformer 到 GPT/Claude/DeepSeek 的演进脉络"叙事；(2) **能力分类支撑**——论文对涌现能力、上下文学习、思维链推理的归纳，与本节"自然语言理解、长上下文推理、个性化生成"三方面能力对应；(3) **中文学术权威性**——作为由中国顶尖团队编写、被国内外广泛认可的综述，引用其为本毕设论文增添中文 LLM 研究脉络的学术站位；(4) **延伸阅读入口**——审阅老师可通过此综述快速验证本节其他参考文献的代表性，强化论文文献综述的可信度。
