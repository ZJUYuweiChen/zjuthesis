# Liu et al. 2023 — AgentBench：评测作为智能体的大语言模型

- **Authors**: Xiao Liu, Hao Yu, Hanchen Zhang, Yifan Xu, Xuanyu Lei, Hanyu Lai, Yu Gu, Hangliang Ding, Kaiwen Men, Kejuan Yang, Shudan Zhang, Xiang Deng, Aohan Zeng, Zhengxiao Du, Chenhui Zhang, Sheng Shen, Tianjun Zhang, Yu Su, Huan Sun, Minlie Huang, Yuxiao Dong, Jie Tang
- **Year**: 2023
- **Venue**: arXiv 预印本（后被 ICLR 2024 接收；清华大学 THUDM 团队）
- **DOI/arXiv ID**: arXiv:2308.03688
- **Citations**: 600+（Semantic Scholar 2025 年统计）
- **Source**: arXiv
- **Section relevance**: §2.1.2 国产智能体开发框架的成熟（智能体能力的标准化评测框架）

## 摘要 (Abstract Summary)

AgentBench 由清华大学知识工程实验室（THUDM，GLM 团队）、俄亥俄州立大学等机构共同发布，是首个系统性评测 LLM 作为智能体（LLM-as-Agent）能力的多环境标准化基准。论文指出，尽管学术界与工业界普遍认为 LLM 具备成为智能体的潜力，但缺少可量化、跨环境的评测体系。AgentBench 构造了 8 个截然不同的交互式环境，覆盖三大类任务：(1) **代码相关环境**——操作系统（OS）、数据库（DB）、知识图谱（KG）；(2) **游戏相关环境**——数字卡牌（DCG）、家务任务（HouseHolding）、横向探索（LTP，Lateral Thinking Puzzles）；(3) **Web 与现实世界**——Web 购物（WebShopping）、Web 浏览（WebArena 子集）。论文测评了 25+ 个商业与开源 LLM（包括 GPT-4、Claude、ChatGPT、Qwen-7B、ChatGLM2、LLaMA2 等），发现：顶级商业 LLM（GPT-4、Claude）在复杂 Agent 任务上表现强劲，但开源模型与之差距显著，主要瓶颈在于**长程推理（long-term reasoning）、决策能力（decision-making）与指令遵循（instruction following）**。论文还分析失败案例，提出"提升指令遵循 + 高质量多轮对齐数据"是改进的关键方向，并指出"代码训练"对不同 Agent 任务的影响是双面的（提升某些、损害其他）。AgentBench 已成为评估 LLM Agent 能力的事实标准之一，被后续工作（如 AgentInstruct、Agent-FLAN）广泛引用。

## 与本节的关联

AgentBench 是评测层面"智能体技术栈成熟度"的直接证据：当一个领域可以建立起规范化、跨环境、跨模型的标准化评测体系时，意味着该领域已经从"概念探索期"进入"工程优化期"。这与本节"国产智能体技术栈多维成熟"的论点直接呼应。值得注意的是，AgentBench 论文中专门测评了多个国产开源 LLM（Qwen、ChatGLM2、Baichuan 等）在 Agent 任务上的表现，为本毕业设计 AI4ADHD 选择"通义千问 Qwen 系列（通过 Spring AI Alibaba 调用 DashScope）"作为底层 LLM 提供了实证依据——Qwen 系列在 AgentBench 各项任务上的表现是开源模型中位居前列的。此外，AgentBench 揭示的"指令遵循 + 多轮对齐"瓶颈也直接影响 AI4ADHD 项目的工程决策：在 prompt 工程上需要重点优化系统提示，强化工具调用的结构化输出格式，引入对话历史摘要（Spring AI Alibaba 提供 Summary Hook）以规避长程上下文衰减问题。引用 AgentBench 可论证：智能体作为一项可量化的技术能力，已具备工程化落地的成熟度，国产 LLM 已能在主流 Agent 任务上达到可用水平。
