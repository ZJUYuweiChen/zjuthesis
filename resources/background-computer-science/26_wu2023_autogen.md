# Wu et al. 2023 — AutoGen：通过多智能体对话实现下一代 LLM 应用

- **Authors**: Qingyun Wu, Gagan Bansal, Jieyu Zhang, Yiran Wu, Beibin Li, Erkang Zhu, Li Jiang, Xiaoyun Zhang, Shaokun Zhang, Jiale Liu, Ahmed Hassan Awadallah, Ryen W. White, Doug Burger, Chi Wang
- **Year**: 2023
- **Venue**: arXiv 预印本（Microsoft Research；后续被 ICLR 2024 LLM Agents Workshop 等收录）
- **DOI/arXiv ID**: arXiv:2308.08155
- **Citations**: 1500+（Semantic Scholar 2025 年统计）
- **Source**: arXiv / Semantic Scholar
- **Section relevance**: §2.1.2 国产智能体开发框架的成熟（作为国际主流多智能体框架对比基线）

## 摘要 (Abstract Summary)

AutoGen 是微软研究院于 2023 年发布的开源 LLM 多智能体应用开发框架，旨在让开发者通过"多个可对话的智能体（agent）相互协作"完成复杂任务。框架的核心抽象是"可定制、可对话（conversable）的智能体"——每个智能体可以由 LLM、人类输入与工具任一组合驱动，并在不同模式下灵活切换。AutoGen 通过自然语言或 Python 代码定义智能体之间的会话模式（conversation pattern），从而支持极其多样的应用场景，包括两两对话、群组对话、嵌套对话以及反思式（reflective）对话。论文给出多个典型应用：数学推理（与人类数据科学家协作的代码生成）、代码生成与单元测试、长文本问答、运筹优化、在线决策（在 ALFWorld 环境中超越 ReAct 与 BabyAGI）以及聊天娱乐等。实证研究表明，相对于单一智能体或简单链式调用，AutoGen 的多智能体协作显著提高任务正确率与可控性。框架的设计哲学强调"以对话为编程范式"（conversation programming），将复杂工作流分解为可复用、可组合的智能体之间的对话，使得 LLM 应用的开发从"提示工程"上升到"代理工程"。AutoGen 现已成为 Microsoft AutoGen Studio、Magentic-One 等后续工业级 Agent 系统的基础。

## 与本节的关联

AutoGen 是本节论述"主流 Agent 开发框架"时必须对比的国际标杆之一。本毕业设计 AI4ADHD 项目所选用的国产 Spring AI Alibaba 框架在多智能体编排理念上与 AutoGen 有许多共通之处：两者都将"可定制智能体 + 可组合工作流"作为核心抽象。但二者也有显著差异：(1) 语言生态——AutoGen 主要面向 Python 与微软 Azure 生态，对 Java 企业级开发者不够友好；Spring AI Alibaba 则原生集成于 Spring Boot 生态，更适配本项目所使用的 Java 21 + Spring Boot 3.5 后端栈。(2) 国产 LLM 适配——AutoGen 默认对接 OpenAI、Azure OpenAI 系列，国产模型（通义千问、文心一言、智谱 GLM）需要自行适配；Spring AI Alibaba 原生对接阿里云百炼 DashScope，可直接调用通义千问 Qwen 系列，避免数据出境合规风险。(3) 工程化部署——AutoGen 缺乏对企业级监控、配置中心（Nacos）、网关的开箱即用集成。引用 AutoGen 论文可论证多智能体范式的学术合法性，并衬托国产框架在本土化场景下的工程优势。
