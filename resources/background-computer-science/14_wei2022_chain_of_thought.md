# Wei et al. 2022 — Chain-of-Thought 提示激发大语言模型的推理能力

- **Authors**: Jason Wei, Xuezhi Wang, Dale Schuurmans, Maarten Bosma, Brian Ichter, Fei Xia, Ed Chi, Quoc Le, Denny Zhou
- **Year**: 2022
- **Venue**: NeurIPS 2022; arXiv:2201.11903
- **DOI/arXiv ID**: arXiv:2201.11903
- **Citations**: 12000+ (LLM 推理范式的开创性文献)
- **Source**: arXiv / Google Research
- **Section relevance**: §2.1.2 智能体架构的范式迁移（推理增强方法的起点）

## 摘要 (Abstract Summary)

Wei 等人在 Google Research 提出 **思维链提示（Chain-of-Thought, CoT Prompting）** 方法，揭示了一个关键现象：仅需在少样本提示（few-shot prompts）中加入"中间推理步骤"作为示例，即可大幅提升大型语言模型在复杂推理任务上的表现，而无需任何参数微调。

**核心方法：** 给模型提供包含"问题—中间推理过程—答案"完整链条的几条示范，模型在面对新问题时即可"模仿"生成类似的逐步推理过程。

**关键发现：**
1. **能力涌现性（emergent ability）**：CoT 提升仅在 **100B 参数量以上**的大模型中显著出现，是 LLM 规模化的标志性涌现能力之一。
2. **算术推理突破**：在 GSM8K 小学数学应用题基准上，仅用 8 个 CoT 示例提示 PaLM 540B，准确率从 18% 跃升至 **57%**，**超越了经过 fine-tuning + verifier 的 GPT-3**。
3. **常识与符号推理**：在 CommonsenseQA、StrategyQA、Date Understanding 等任务上同样观察到显著性能增益。
4. **可解释性副产物**：模型生成的中间步骤为人类理解模型"如何得出答案"提供了直接的语言级窥视窗口，可用于错误归因。

**理论意义：** CoT 揭示了大模型本身具备"被引导出"的推理能力，不需要架构修改或额外训练；这为后续 ToT、Reflexion、ReAct 等所有推理增强方法奠定了理论基础——即推理是 LLM 的隐含能力，需要恰当的提示策略来激发。

## 与本节的关联

本论文是本节"推理增强方法（CoT, ToT, Reflexion）"论述中**最基础与必引文献**。具体支撑：
1. **范式迁移的起点**：CoT 是从"单次 token 概率最大化生成"到"显式多步推理"的第一次跨越，是后续所有智能体推理架构的认知基础。
2. **支撑本项目的任务拆解能力**：AI4ADHD 项目的"任务分解（task decomposition）"功能——把大目标拆成可执行子任务——本质上就是 CoT 在任务规划领域的具体应用。Wei 等人证明 LLM 在足够规模下具备此能力。
3. **能力涌现论据**：CoT 的"规模阈值"现象为论文§2.1.1 "大模型能力涌现"部分提供经典案例，并解释了为何当前 AI4ADHD 选择 Qwen-Plus 等百亿/千亿参数模型——只有超过临界规模的 LLM 才能稳定执行 CoT 推理。
4. **可解释性的工程价值**：ADHD 用户对工具自动决策的信任度敏感，CoT 生成的可读推理过程使得项目智能体的每一步任务决策都可向用户展示与解释，提升用户信任。
