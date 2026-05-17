# Yao et al. 2022 — ReAct: 在大语言模型中协同推理与行动

- **Authors**: Shunyu Yao, Jeffrey Zhao, Dian Yu, Nan Du, Izhak Shafran, Karthik Narasimhan, Yuan Cao
- **Year**: 2022 (v1) / 2023 (ICLR 接收)
- **Venue**: ICLR 2023; arXiv:2210.03629
- **DOI/arXiv ID**: arXiv:2210.03629
- **Citations**: 6000+ (智能体领域奠基性文献之一)
- **Source**: arXiv / Semantic Scholar / Princeton NLP
- **Section relevance**: §2.1.2 智能体架构的范式迁移（核心文献，ReAct 范式提出者）

## 摘要 (Abstract Summary)

Yao 等人提出 **ReAct（Reasoning + Acting）** 框架，首次将大语言模型的"链式推理（chain-of-thought reasoning）"与"任务行动（action plan generation）"在同一序列中**交织生成**，实现了从被动语言生成到自主智能体的关键范式转变。

**核心机制：** ReAct 智能体在每一步生成三类输出，构成"思考—行动—观察（Thought-Action-Observation）"循环：
- **Thought（思考）**：模型显式地用自然语言推理当前局势、规划下一步、跟踪进度、处理异常
- **Action（行动）**：模型生成具体的外部 API/工具调用（如 `Search[query]`, `Lookup[entity]`, `Finish[answer]`）
- **Observation（观察）**：执行行动后，将工具返回的结果注入到下一轮上下文中

**关键贡献：**
1. **可解释性与可信度提升**：相比无 reasoning 的纯行动智能体或无 acting 的纯 CoT，ReAct 生成的轨迹更接近"人类问题求解"过程，便于审查与干预。
2. **缓解幻觉与错误传播**：通过与外部环境（Wikipedia API、文件系统等）交互获取真实信息，ReAct 在 HotpotQA、Fever 等知识密集型任务上**显著优于纯 CoT 的幻觉问题**。
3. **强大的少样本学习**：在 ALFWorld、WebShop 两个交互式决策基准上，仅用 1-2 个 in-context examples，ReAct 即超越模仿学习与强化学习方法，**成功率相对提升 34% 和 10%**。
4. **统一框架的可扩展性**：思考—行动—观察可推广到任意工具集合，奠定了后续 AutoGPT、LangChain Agents、AutoGen 等工程化智能体的理论基础。

## 与本节的关联

ReAct 是本毕业设计 AI4ADHD 项目的**核心架构理论基础**。本节"智能体架构的范式迁移"将以此论文论证：
1. **范式迁移**：引用 ReAct 阐述从"被动问答模型"到"主动循环推理智能体"的转变——后者能够基于外部反馈持续修正自身计划。
2. **思考—行动—观察循环**：直接对应本项目智能体的核心运转机制——大模型（DashScope Qwen）负责生成 Thought（理解用户描述）与 Action（调用任务管理工具如 `createTask`, `splitTask`, `queryProgress`），观察返回结果后继续推理。
3. **可解释性论证**：ReAct 强调推理轨迹的人类可读性，这正契合本项目"AI 助理需对 ADHD 用户透明可控"的设计要求。
4. **工程可行性**：ReAct 仅需 prompt 工程而非模型微调，证明了本项目基于 Spring AI Alibaba + Qwen 实现智能体的技术路线在 2024-2025 年已是工业界主流。
