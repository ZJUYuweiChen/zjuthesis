# Li et al. 2023 — ModelScope-Agent：基于开源大模型构建可定制的智能体系统

- **Authors**: Chenliang Li, Hehong Chen, Ming Yan, Weizhou Shen, Haiyang Xu, Zhikai Wu, Zhicheng Zhang, Wenmeng Zhou, Yingda Chen, Chen Cheng, Hongzhu Shi, Ji Zhang, Fei Huang, Jingren Zhou
- **Year**: 2023
- **Venue**: arXiv 预印本（后被 EMNLP 2023 Demo Track 接收）；阿里巴巴达摩院 ModelScope 团队
- **DOI/arXiv ID**: arXiv:2309.00986
- **Citations**: 30+（Semantic Scholar 2025 年统计；GitHub 项目超 4k stars）
- **Source**: arXiv / Semantic Scholar
- **Section relevance**: §2.1.2 国产智能体开发框架的成熟（阿里巴巴另一国产 Agent 框架的代表）

## 摘要 (Abstract Summary)

ModelScope-Agent 是阿里巴巴达摩院 ModelScope（魔搭社区）团队发布的"基于开源 LLM 构建可定制智能体系统"的通用框架，是国产 Agent 框架的代表性工作之一。与微软 AutoGen、清华 AgentVerse 等强调多智能体协作不同，ModelScope-Agent 聚焦于**单智能体 + 大规模工具调用**这一更接地气的工程场景：在 ChatGPT Plugins 兴起的背景下，如何让开源 LLM（而非依赖 OpenAI API）也能调用海量外部工具完成实际任务。论文提出一个端到端框架，覆盖六大环节：(1) **工具调用数据收集**——通过自动化与人工标注相结合，构建 4k+ 条工具调用样本；(2) **工具检索（Tool Retrieval）**——基于密集检索从工具库中召回相关 Top-K 工具；(3) **工具注册（Tool Registration）**——统一接口规范，支持模型 API 与通用 API 的接入；(4) **记忆控制（Memory Control）**——管理多轮上下文、工具结果与中间状态；(5) **定制化模型训练**——在开源 LLM（如 ChatGLM、LLaMA、Qwen）上进行 LoRA/全量微调，增强工具调用能力；(6) **评测体系**——涵盖工具选择正确率、参数填写正确率与最终任务完成率。基于该框架，作者展示了 ModelScopeGPT——一个连接 ModelScope 社区 1000+ AI 模型的真实智能助手。ModelScope-Agent 后续演化出 ModelScope-Agent-Server、Modelscope-Agent-Search 等扩展。

## 与本节的关联

ModelScope-Agent 与 Spring AI Alibaba 同属阿里巴巴体系下的开源 Agent 框架，但二者的定位互补：ModelScope-Agent 偏向"Python + ML 工程师 + 开源模型微调 + 工具调用"的研究/原型阶段，而 Spring AI Alibaba 则面向"Java + 企业级应用开发者 + 商业 LLM API（通过 DashScope 调用 Qwen 等）+ 复杂工作流编排"的工业落地阶段。本毕业设计 AI4ADHD 项目处于"企业级 Java 后端"场景，所以选择 Spring AI Alibaba 而非 ModelScope-Agent。但 ModelScope-Agent 论文中提出的几项关键技术对本项目有直接借鉴价值：(1) **工具检索**——当工具数量增多时不应将所有工具描述塞入 prompt，AI4ADHD 项目目前工具数量较少（如查询用户项目数据的几个内部工具），但未来若引入第三方 MCP 工具时可借鉴该思路；(2) **工具调用数据集**——可用于评测 LLM 在本项目场景下的工具调用准确率；(3) **统一工具注册接口**——Spring AI Alibaba 提供 FunctionToolCallback 与 ToolContext，与 ModelScope-Agent 的设计哲学一致，证明国产框架在工具调用这一核心抽象上已收敛到统一范式。引用本文可证明阿里巴巴在 Agent 框架方向上有"双轨"布局（研究侧 ModelScope-Agent + 工程侧 Spring AI Alibaba），生态成熟度可观。
