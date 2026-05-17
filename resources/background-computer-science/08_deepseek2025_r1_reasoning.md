# DeepSeek-AI 2025 — DeepSeek-R1: Incentivizing Reasoning Capability in LLMs via Reinforcement Learning：通过强化学习激励 LLM 推理能力

- **Authors**: DeepSeek-AI Team（集体署名）
- **Year**: 2025（1 月发布）
- **Venue**: arXiv（DeepSeek 官方技术报告）/ Nature 2025 接收版
- **DOI/arXiv ID**: arXiv:2501.12948
- **Citations**: 3,000+（半年内迅速积累）
- **Source**: arXiv / DeepSeek-AI / Nature
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文提出 DeepSeek-R1，一个通过 **纯强化学习（RL）训练**激发 LLM 推理能力的开创性工作，验证了"无需人类示范即可自发涌现高级推理模式"的假设。研究背景为：尽管思维链（Chain-of-Thought, CoT）提示与人工标注推理轨迹能显著提升 LLM 复杂任务能力，但其受限于人工标注规模与人类思维偏差。论文方法核心：(1) 以 DeepSeek-V3-Base 为基础，跳过传统的监督微调（SFT）阶段，直接采用 **Group Relative Policy Optimization (GRPO)** 算法进行 RL；(2) 奖励信号仅基于最终答案与标准答案的正确性匹配（如数学题、代码题），不约束推理过程本身。结果产生的 **DeepSeek-R1-Zero** 自发学会了自我反思、验证、动态策略调整等高级推理模式，在 AIME 2024 数学竞赛、MATH 500、GPQA-Diamond、Codeforces 等任务上**超越使用人工示范监督训练的对照模型**。但 R1-Zero 存在可读性差、中英混杂等问题，论文进一步提出 **DeepSeek-R1**——通过多阶段流水线（拒绝采样 + RL + 监督微调）整合推理能力与人类偏好对齐，得到既能深度推理又输出整洁可读的最终模型。论文还将 R1 推理能力**蒸馏到 1.5B-70B 较小模型**，显著超越同规模指令微调对照模型。DeepSeek-R1 是开源社区首次复现 OpenAI o1 类"系统 2"推理范式的模型，并开放权重，被誉为"国产 AI 的 Sputnik 时刻"。

## 与本节的关联

DeepSeek-R1 对支撑§2.1.2 中"LLM 在长上下文推理、个性化生成方面的能力提升"叙事极为关键。**ADHD 与拖延群体的任务管理需要 LLM 具备复杂规划与多步推理能力**——例如把"我下周二要交 5000 字论文，但我还没开始也不知如何下手"这样模糊的输入拆解为"先确定主题→搜索文献→列大纲→分段写作→预留修改时间"等可执行子任务，这恰恰需要 R1 所展示的深度推理能力。引用本论文可以论证：(1) **能力可得**——以 DeepSeek-R1 为代表的国产开源推理模型，使个人项目可低成本接入"会思考"的 LLM 服务，无需依赖闭源 o1 API；(2) **行为可塑**——纯 RL 训练范式表明 LLM 推理风格可通过定制化奖励函数引导，未来 AI4ADHD 项目可探索"对完成度高的任务规划给予正奖励"等领域定制策略；(3) **蒸馏可行**——R1 知识可蒸馏到小模型，为本毕设未来部署轻量化客户端推理模型提供路径。
