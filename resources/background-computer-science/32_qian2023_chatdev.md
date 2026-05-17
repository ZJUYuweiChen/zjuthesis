# Qian et al. 2023 — ChatDev：用于软件开发的通信式智能体

- **Authors**: Chen Qian, Wei Liu, Hongzhang Liu, Nuo Chen, Yufan Dang, Jiahao Li, Cheng Yang, Weize Chen, Yusheng Su, Xin Cong, Juyuan Xu, Dahai Li, Zhiyuan Liu, Maosong Sun
- **Year**: 2023
- **Venue**: arXiv 预印本（后被 ACL 2024 接收为长文）；清华大学 THUNLP / OpenBMB / 修远科技联合
- **DOI/arXiv ID**: arXiv:2307.07924
- **Citations**: 1100+（Semantic Scholar 2025 年统计；GitHub 项目超 25k stars）
- **Source**: arXiv
- **Section relevance**: §2.1.2 国产智能体开发框架的成熟（华人主导的工业化多智能体应用案例）

## 摘要 (Abstract Summary)

ChatDev 是清华大学自然语言处理实验室（THUNLP）与北京修远科技联合发布的"通信式智能体软件开发框架"。其核心愿景是：用 LLM 智能体之间的自然语言对话取代传统瀑布模型中由人类完成的需求分析、设计、编码、测试、部署等环节，让一句话需求即可生成一个完整的软件项目。论文提出两大核心创新：(1) **聊天链（Chat Chain）**——将软件开发的瀑布模型拆解为多个原子化的"两两对话子任务"（如 CEO ↔ CTO 讨论需求、CTO ↔ Programmer 决定技术栈、Programmer ↔ Reviewer 审查代码、Tester ↔ Programmer 修复 bug），每个子任务都是一次受控的两方对话，输出明确的中间产物（需求文档、模块设计、源代码、测试报告）。Chat Chain 将复杂工作流形式化为有向无环图，使开发流程可控、可追踪。(2) **通信式去幻觉（Communicative Dehallucination）**——观察到 LLM 单方面生成代码易产生幻觉（不存在的 API、错误的调用），ChatDev 让"指令角色"（如 Programmer）主动向"评审角色"（如 Reviewer）提问，通过反向澄清减少错误。论文在 SoftwareDev 等基准上证明，ChatDev 在不到 7 美元 API 成本下即可生成完整可运行的小型软件（俄罗斯方块、五子棋、个人主页等），代码可执行性显著优于 GPT-Engineer 等基线。

## 与本节的关联

ChatDev 是华人学者主导的、在国际上最具影响力的多智能体应用之一，对本节"国产智能体技术栈成熟"的论述具有重要价值。本毕业设计 AI4ADHD 借鉴了 ChatDev 的两条核心设计思想：(1) **聊天链 → 工作流编排**——ChatDev 将复杂任务拆解为多个可控的对话子任务，AI4ADHD 在"项目构建"场景中也采用类似思路：路由智能体先判断项目复杂度与对话模式，然后将控制权传递给对应的"简单/复杂构建智能体"，每一步都有明确的输入输出契约（这正是 Spring AI Alibaba Graph 的 Node + Edge 模型）。(2) **通信式去幻觉 → 工具调用反馈**——AI4ADHD 通过让智能体调用"查询用户项目数据"的工具来获取真实状态，避免凭空捏造，与 ChatDev 的"Reviewer 反向澄清"在思想上一脉相承。此外，ChatDev 论文证明"用 LLM 智能体构建实际可运行的软件"是可行的，这间接支持本毕业设计的可行性论证——既然 LLM 智能体能编写软件，那么用其辅助 ADHD 用户分解、管理任务也具备技术合理性。引用 ChatDev 可论证：华人学界已在 Agent 范式上做出原创性贡献，国产 Spring AI Alibaba 框架的设计哲学（图编排 + 节点 + 工具调用）与这些前沿研究保持同步。
