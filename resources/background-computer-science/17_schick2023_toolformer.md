# Schick et al. 2023 — Toolformer: 大语言模型可以自学使用工具

- **Authors**: Timo Schick, Jane Dwivedi-Yu, Roberto Dessì, Roberta Raileanu, Maria Lomeli, Luke Zettlemoyer, Nicola Cancedda, Thomas Scialom
- **Year**: 2023
- **Venue**: NeurIPS 2023; arXiv:2302.04761（Meta AI Research）
- **DOI/arXiv ID**: arXiv:2302.04761
- **Citations**: 2500+
- **Source**: arXiv / Meta AI
- **Section relevance**: §2.1.2 智能体架构的范式迁移（Function Calling / Tool Calling 机制）

## 摘要 (Abstract Summary)

Meta AI 团队提出 **Toolformer**，首次系统证明 **大语言模型能够通过自监督学习"自主决定何时、调用何种外部 API、传入什么参数、如何利用返回结果"**——这是 Function Calling / Tool Calling 范式的理论起点。

**核心方法（自监督训练管道）：**
1. **API 调用插入**：在原始文本语料中，让 LLM 自动在"看起来需要外部信息"的位置插入候选 API 调用（如计算器、搜索引擎、维基百科、翻译器、日历）。
2. **执行与过滤**：实际调用 API 获取结果，仅当结果**显著降低后续 token 的困惑度（perplexity）**时，才保留该 API 调用作为训练样本——这是一种"是否真正有助益"的自筛选机制。
3. **微调**：用筛选后的语料微调 LM，使其学会在生成过程中**主动且适时**地穿插 API 调用。

**核心工具集：** 计算器、Q&A 系统、两种搜索引擎、翻译系统、日历。

**关键发现：**
- **零样本性能显著提升**：6.7B 参数的 Toolformer 在多个任务（数学、问答、多语翻译）上**接近或超过 175B 参数的 GPT-3**，证明工具调用比单纯增大模型更经济。
- **保留通用能力**：Toolformer 不损失基础语言建模能力。
- **小数据高效**：每个 API 仅需"少数几个 demonstration"即可教会模型使用。

**理论意义：** Toolformer 是从"LLM 仅在内部生成"到"LLM 作为协调中枢调度外部能力"的范式转变的起点。它为 OpenAI Function Calling、Anthropic Tool Use、阿里 Spring AI Alibaba 等所有现代工具调用 API 提供了理论与实验基础。

## 与本节的关联

Toolformer 在本节"Function Calling / Tool Calling 与工具调用机制"论述中具有**起源文献**的地位：
1. **工具调用范式的理论奠基**：本项目智能体基于 Spring AI Alibaba 的 `@Tool` 注解机制调用任务管理接口（增删改查任务、查询进度、生成提醒），其底层逻辑——LLM 决定何时调用何种工具——的最早系统化论证即来自 Toolformer。
2. **四大支柱中的"工具调用"**：论文将"工具调用"列为智能体四大支柱之一，Toolformer 是该支柱的代表性源头文献。
3. **轻量模型 + 工具 ≈ 巨型模型**：Toolformer 的"6.7B + 工具 ≈ 175B"实验数据，为本项目选择"中等规模 Qwen-Plus + 工具调用"而非高成本巨型模型的工程决策提供了理论与经济性论据。
4. **自筛选机制的工程启示**：Toolformer 用"困惑度下降"判断工具是否真正有用——这一思想可启发本项目设计"工具调用置信度门控"机制，避免智能体盲目滥用工具。
5. **API 多样性**：计算器、搜索、翻译、日历等基础工具的覆盖，与本项目工具集（任务 CRUD、日程提醒、统计查询）在结构上同构，证明本项目工具设计符合主流智能体范式。
