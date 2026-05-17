# Sweller, Ayres & Kalyuga 2011 — 认知负荷理论（综合性专著）

- **Authors**: John Sweller; Paul Ayres; Slava Kalyuga
- **Year**: 2011
- **Venue**: Springer, Explorations in the Learning Sciences, Instructional Systems and Performance Technologies, Vol. 1
- **DOI/arXiv ID**: 10.1007/978-1-4419-8126-4 (book); ISBN 9781441981257
- **Citations**: 1179+ (Semantic Scholar, 综合性专著)
- **Source**: Springer / Semantic Scholar
- **Section relevance**: §2.1.2 对话式交互与认知支持理论

## 摘要 (Abstract Summary)

本书是 Sweller 团队在其 1988 年奠基论文（参见 [[34_sweller1988_cognitive_load]]）基础上 23 年研究成果的系统集成，被视为认知负荷理论（Cognitive Load Theory, CLT）的权威专著。全书围绕"人类认知架构是有限工作记忆 + 无限长期记忆"这一基本前提，将认知负荷分为三类并系统阐述其测量与设计原则：(1) **内在认知负荷（Intrinsic Cognitive Load）**——由学习材料本身的元素交互复杂度决定，反映任务的固有难度；(2) **外在认知负荷（Extraneous Cognitive Load）**——由信息呈现方式而非内容本身造成的额外工作记忆消耗，是教学设计可优化的核心目标；(3) **相关认知负荷（Germane Cognitive Load）**——用于图式构建（schema construction）与自动化的有效负荷，是设计应主动促进的部分。基于这一框架，书中详细论证了 CLT 衍生出的多项可实证检验的设计效应，包括 **goal-free effect、worked example effect、split-attention effect、modality effect、redundancy effect、expertise reversal effect** 等。这些效应直接指引信息呈现、界面设计与教学媒介的工程化选择。书的最后部分还探讨了 CLT 在多媒体学习、网络学习与人机交互界面设计中的扩展应用，为后续 HCI 研究提供了认知科学层面的理论锚点。

## 与本节的关联

本书是支撑§2.1.2 第四段"认知负荷理论对信息架构与界面层级的指导原则"的核心权威文献，相较 [[34_sweller1988_cognitive_load]] 提供更系统的设计原则可直接对应项目工程实践。具体应用举例：(1) **降低外在认知负荷**——AI4ADHD 的项目视图（ProjectView）通过聚合任务、标签、截止日期为单一虚拟视图，避免用户在多个数据源间跳转，对应书中 split-attention effect 的规避；(2) **促进图式构建**——智能体在构建模式中以"项目→任务→子任务→标签"的统一层级生成结构化任务清单，符合 CLT 提出的 schema acquisition 设计目标；(3) **modality effect 的应用**——项目通过文字 + 语音双通道交互（VoiceTokenService 支持的语音 SDK）实现信息分散到视听双路，降低单通道工作记忆压力；(4) **expertise reversal effect 的处理**——为 ADHD 新用户简化界面、隐藏高级功能（与 [[39_springer2020_progressive_disclosure]] 渐进式披露原则一致），而为熟练用户开放完整的工具调用链。同时，书中关于工作记忆容量限制（约 4±1 个 chunk）的论述直接支撑了项目"任务分解粒度"算法——AI 智能体不应一次抛出 10+ 个子任务，而应按 3-5 个步骤分批呈现，与 ADHD 群体本就受损的工作记忆能力（见 [[07_barkley1997_unifying_theory_adhd]]）相匹配。
