# Ouyang et al. 2022 — Training Language Models to Follow Instructions with Human Feedback：InstructGPT 与人类反馈强化学习

- **Authors**: Long Ouyang, Jeff Wu, Xu Jiang, Diogo Almeida, Carroll L. Wainwright, Pamela Mishkin, Chong Zhang, Sandhini Agarwal, Katarina Slama, Alex Ray, John Schulman, Jacob Hilton, Fraser Kelton, Luke Miller, Maddie Simens, Amanda Askell, Peter Welinder, Paul Christiano, Jan Leike, Ryan Lowe
- **Year**: 2022
- **Venue**: NeurIPS 2022
- **DOI/arXiv ID**: arXiv:2203.02155
- **Citations**: 15,000+
- **Source**: arXiv / NeurIPS Proceedings
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文提出 InstructGPT，通过 **人类反馈强化学习（Reinforcement Learning from Human Feedback，RLHF）** 将语言模型与用户意图对齐。论文指出：单纯放大语言模型并不能让其更好地遵循用户指令——大模型可能生成不真实、有害、不有用的内容，即"对齐失败"。InstructGPT 训练流程包含三步：(1) **监督微调（SFT）**——OpenAI 雇佣 40 名标注员撰写示范回答，用于在 GPT-3 上做监督学习；(2) **奖励模型训练**——收集模型输出的人工偏好排序数据，训练奖励模型预测人类喜好；(3) **强化学习**——以 PPO 算法将奖励模型作为奖励信号微调 SFT 模型，得到最终的 InstructGPT。在 OpenAI API 真实用户提示分布的人类盲评中，**1.3B 参数的 InstructGPT 输出被偏好于 175B 参数 GPT-3 输出**——即对齐良好的小模型超越未对齐的百倍大模型。175B InstructGPT 被偏好于 175B GPT-3 的概率达到 85±3%；同时在 TruthfulQA 上的真实性提高、RealToxicityPrompts 上的毒性降低，且在公开 NLP 基准上的性能仅有轻微回退。论文确立了 RLHF 作为 LLM 与人类价值对齐的关键技术路径，是 ChatGPT、Claude、文心一言等所有现代对话式 LLM 的方法论基础。

## 与本节的关联

本论文是§2.1.2 第一段中"LLM 走向认知伙伴"叙事不可或缺的支撑文献。它揭示了一个关键转折点：**LLM 从能力强大但难以驯服的"通用文本生成器"演变为可与人类共同协作的"对齐对话伙伴"**。对 AI4ADHD 项目而言，这一转变直接关乎可行性——ADHD 与拖延症用户处于情绪脆弱状态，需要 LLM 输出既准确、又温和、且严格遵循"教练式干预"指令；这恰恰是 RLHF 所赋能的能力。引用此论文可以论证：项目所依赖的 Spring AI Alibaba 对接的 Qwen-Chat / DeepSeek-Chat 等"指令调优 + RLHF"模型，相较原始预训练模型在意图遵循与安全性上有质的提升，这是构建"个性化任务管理智能体"的技术前提。论文中"1.3B 小模型超越 175B 大模型"的结论，亦为本毕设论文论证"中小规模国产对齐模型即可服务于专业领域"提供了直接数据支持。
