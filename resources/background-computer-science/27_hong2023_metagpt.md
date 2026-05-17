# Hong et al. 2023 — MetaGPT：面向多智能体协作框架的元编程

- **Authors**: Sirui Hong, Mingchen Zhuge, Jiaqi Chen, Xiawu Zheng, Yuheng Cheng, Ceyao Zhang, Jinlin Wang, Zili Wang, Steven Ka Shing Yau, Zijuan Lin, Liyang Zhou, Chenyu Ran, Lingfeng Xiao, Chenglin Wu, Jürgen Schmidhuber
- **Year**: 2023
- **Venue**: arXiv 预印本（后被 ICLR 2024 接收为 Oral Presentation）
- **DOI/arXiv ID**: arXiv:2308.00352
- **Citations**: 1500+（Semantic Scholar 2025 年统计，GitHub 项目超 40k stars）
- **Source**: arXiv
- **Section relevance**: §2.1.2 国产智能体开发框架的成熟（华人主导的开源多智能体框架案例）

## 摘要 (Abstract Summary)

MetaGPT 是由 DeepWisdom 联合昆士兰大学、香港中文大学（深圳）等机构、由施密德胡贝（Jürgen Schmidhuber）参与署名的多智能体协作框架。论文针对"LLM 链式调用导致级联幻觉与逻辑不一致"的核心痛点，提出将"人类工作流（Standardized Operating Procedures，SOP）"编码为提示序列，从而让 LLM 智能体获得类人的领域专家能力。MetaGPT 采用"流水线（assembly line）"范式：将一个复杂任务（如一个软件项目）分解为多个角色（产品经理、架构师、项目经理、工程师、QA 测试工程师），每个角色由一个独立的 LLM 智能体扮演，按 SOP 顺序工作，并在每一步交付结构化中间产物（PRD 文档、API 设计文档、流程图、源代码、测试用例等），后续角色基于这些产物继续推进。框架还引入了"消息共享池（shared message pool）+ 订阅机制"，使智能体之间通信高效且去中心化，避免了 AutoGen 等框架中"群聊式通信"的上下文爆炸问题。论文在 HumanEval、MBPP、SoftwareDev 等基准上证明，MetaGPT 在软件工程任务上的代码正确率（pass@1）显著优于 ChatDev、AutoGPT 等基线，并能从一句话需求自动生成可运行的小型软件项目。MetaGPT 后续演化出 MGX、Data Interpreter 等扩展。

## 与本节的关联

MetaGPT 是华人学者在国际多智能体框架研究中具有代表性的成果，对本节"国产智能体技术栈成熟"的论述具有重要参考意义。本项目 AI4ADHD 借鉴了 MetaGPT 的两条核心设计思想并将其落地到 Spring AI Alibaba 框架上：(1) **SOP 流水线**——AI4ADHD 在"任务管理"流程中也采用了类似的"角色分工"：路由智能体（Router）→ 简单/复杂项目对话智能体 → 简单/复杂项目构建智能体，每个角色承担明确职责，通过图引擎按条件路由。(2) **结构化交接产物**——MetaGPT 使用 PRD/设计文档作为中间产物，AI4ADHD 则使用结构化输出（outputSchema）作为智能体之间的消息载体，避免自然语言级联导致的幻觉。引用 MetaGPT 论文可论证"基于 SOP 的多智能体编排"已成为学术界与工业界共识，国产 Spring AI Alibaba 框架将该范式以 Java 原生的 StateGraph + Node + Edge 三元组提供出来，让 Java 开发者无需切换到 Python 即可享受同等表达力。
