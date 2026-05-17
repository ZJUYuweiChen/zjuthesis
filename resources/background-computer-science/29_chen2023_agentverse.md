# Chen et al. 2023 — AgentVerse：促进多智能体协作与探索智能体群体的涌现行为

- **Authors**: Weize Chen, Yusheng Su, Jingwei Zuo, Cheng Yang, Chenfei Yuan, Chi-Min Chan, Heyang Yu, Yaxi Lu, Yi-Hsin Hung, Chen Qian, Yujia Qin, Xin Cong, Ruobing Xie, Zhiyuan Liu, Maosong Sun, Jie Zhou
- **Year**: 2023
- **Venue**: arXiv 预印本（后被 ICLR 2024 Spotlight 接收；清华大学 THUNLP / OpenBMB / 北京智源研究院联合）
- **DOI/arXiv ID**: arXiv:2308.10848
- **Citations**: 700+（Semantic Scholar 2025 年统计）
- **Source**: arXiv
- **Section relevance**: §2.1.2 国产智能体开发框架的成熟（中国学术机构主导的开源框架）

## 摘要 (Abstract Summary)

AgentVerse 是清华大学自然语言处理实验室（THUNLP）、OpenBMB 团队与腾讯微信 AI 共同发布的多智能体协作框架。论文受人类群体动力学启发，提出一个能够"协作式且动态调整自身组成"的多智能体系统——其整体能力大于成员智能体的简单之和（greater-than-the-sum-of-its-parts）。AgentVerse 将协作流程拆解为四个阶段：(1) **专家招募（Expert Recruitment）**——根据任务自动招募合适的智能体角色组合，可动态增减；(2) **协作决策（Collaborative Decision-Making）**——智能体之间通过自然语言讨论、辩论、反驳，最终达成共识；(3) **行动执行（Action Execution）**——智能体调用工具、API 与环境交互；(4) **评估与迭代（Evaluation）**——评估结果是否满足任务目标，否则进入下一轮迭代。论文在文本理解（CommonGen）、数学推理（MGSM）、代码生成（HumanEval）与 Minecraft 游戏（VillagerBench）等任务上验证了多智能体的优越性，相比单一 GPT-4 智能体提升 8–37% 的成功率。更具洞察力的是，论文还深入观察了智能体在协作过程中涌现出的"社会行为"——包括自愿合作、共情、影响他人、不服从、欺骗等，并讨论了如何放大积极行为、抑制消极行为。AgentVerse 后续被广泛用于多智能体 emergent behavior 研究与 AI Town、模拟社会的搭建。

## 与本节的关联

AgentVerse 是中国学术机构（清华 + 智源 + 腾讯）主导的、对国际多智能体研究产生重要影响的开源框架，与本节"国产智能体技术栈多维成熟"的主题高度契合。其"四阶段协作流程"在概念上与 Spring AI Alibaba Graph 的"图编排 + 节点 + 条件边"高度相似——AgentVerse 的"专家招募 + 协作 + 执行 + 评估"恰好可以映射为 Spring AI Alibaba Graph 中的四个 Node 加上路由 Edge。这表明国产框架在"高层协作抽象"层面已与国际前沿同步。对于本毕业设计 AI4ADHD 项目而言，AgentVerse 还提供了重要的启发：在 ADHD/拖延群体的"任务构建"场景中，可以引入"用户/计划师/激励师/进度跟踪员"等多角色智能体进行协同（虽然本项目目前以单 Agent + 工具调用为主，但未来扩展方向可借鉴 AgentVerse 的多智能体群体协作）。引用本文可论证：国产 Agent 框架不仅在工程层面成熟（Spring AI Alibaba），在前沿研究层面也由清华、阿里、智源等机构持续推进，形成了完整的学产研生态。
