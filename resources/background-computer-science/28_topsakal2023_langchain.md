# Topsakal & Akinci 2023 — 基于 LangChain 创建大语言模型应用：快速开发 LLM 应用入门

- **Authors**: Oguzhan Topsakal (Florida Polytechnic University), Tahir Cetin Akinci (University of California Riverside, WCGEC)
- **Year**: 2023
- **Venue**: Proceedings of the International Conference on Applied Engineering and Natural Sciences (ICAENS), vol. 1, no. 1, pp. 1050–1056
- **DOI/arXiv ID**: ICAENS-2023-1127（as-proceeding.com/index.php/icaens/article/view/1127）
- **Citations**: 600+（Semantic Scholar 2025 年统计）
- **Source**: Semantic Scholar / ResearchGate
- **Section relevance**: §2.1.2 国产智能体开发框架的成熟（作为最广泛采用的 Python LLM 编排框架对比）

## 摘要 (Abstract Summary)

本文是学术界对 LangChain 框架最早、被引用最广的入门型论文，作者分别来自佛罗里达理工大学与加州大学河滨分校。文章系统性地介绍了 LangChain 这一开源 Python 库的设计动机、核心抽象与典型应用方式。LangChain 的提出回应了"如何快速构建定制化 LLM 应用"的工程需求——尽管 OpenAI ChatGPT 等 LLM API 接入简单，但将 LLM 与企业内部数据源、外部工具、长对话记忆相结合时，开发者需要重复实现大量基础设施代码。LangChain 通过六大核心组件解决这一问题：(1) **Models**——统一封装 OpenAI、Anthropic、HuggingFace 等多种模型的调用接口；(2) **Prompts**——提示模板与少样本示例的管理；(3) **Chains**——把多个 LLM 调用、工具调用串成可复用的流水线（最经典是 LLMChain、RetrievalQA Chain）；(4) **Indexes**——文档加载、切分、向量化与检索（RAG 基础设施）；(5) **Memory**——会话历史与摘要管理；(6) **Agents**——能自主选择调用哪些工具的智能体（最早实现了 ReAct 范式）。文章通过完整的 Python 代码示例展示如何用 100 行代码搭建一个具备文档检索、对话记忆与工具调用能力的应用。LangChain 自 2022 年 10 月由 Harrison Chase 开源以来，GitHub stars 已突破 100k，成为事实标准。

## 与本节的关联

LangChain 是全球开发者用得最多的 LLM 应用编排框架，也是本节论述"主流 Agent 开发框架对比"时绕不开的参照系。本毕业设计选择国产 Spring AI Alibaba 而非 LangChain 的原因可借此文论证：(1) **语言栈不匹配**——LangChain 与其升级版 LangGraph 主要面向 Python 生态，而本项目后端采用 Java 21 + Spring Boot 3.5（与 PostgreSQL/Redis/Spring Security 等深度集成），切换到 Python 会引入跨语言通信、双语言部署、运维双栈等额外复杂度。(2) **抽象同构**——Spring AI Alibaba 在抽象层级上对标 LangChain：Spring AI 提供 ChatClient、PromptTemplate、Memory、Tool 等与 LangChain 同名的核心组件，Spring AI Alibaba Graph 则对标 LangGraph 提供 StateGraph、Node、Edge 抽象，并被官方文档明确定位为"Java 版本的 LangGraph"。(3) **国产模型适配**——LangChain 对国产模型（通义千问、文心一言、智谱 GLM）的支持依赖社区贡献且常滞后于 OpenAI，而 Spring AI Alibaba 原生对接阿里云百炼 DashScope。引用本文可建立读者对 LLM 应用框架核心概念的基本认知，并自然过渡到 Spring AI Alibaba 作为"Java 等价物"的合理性论述。
