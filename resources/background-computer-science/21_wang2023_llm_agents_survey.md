# Wang et al. 2023 — 基于大语言模型的自主智能体综述

- **Authors**: Lei Wang, Chen Ma, Xueyang Feng, Zeyu Zhang, Hao Yang, Jingsen Zhang, Zhi-Yuan Chen, Jiakai Tang, Xu Chen, Yankai Lin, Wayne Xin Zhao, Zhewei Wei, Ji-Rong Wen
- **Year**: 2023（v1 发表）/ 2025（最终被 Frontiers of Computer Science 接受）
- **Venue**: Frontiers of Computer Science (FCS), Higher Education Press; arXiv:2308.11432（中国人民大学 高瓴人工智能学院）
- **DOI/arXiv ID**: 10.1007/s11704-024-40231-1 ; arXiv:2308.11432
- **Citations**: 1500+
- **Source**: arXiv / FCS
- **Section relevance**: §2.1.2 智能体架构的范式迁移（智能体四大支柱的统一框架来源）

## 摘要 (Abstract Summary)

Wang 等人撰写的全面综述，系统化梳理了基于 LLM 的自主智能体研究图景，提出业内广泛引用的**统一智能体架构框架**与应用分类。

**统一架构框架（四模块）：** 综述将所有 LLM 智能体抽象为四个核心模块：
1. **Profile（角色/画像）模块**：定义智能体身份、专业领域、人格特质——决定智能体的行为风格。可通过手工设计、LLM 生成或数据驱动方式获取。
2. **Memory（记忆）模块**：存储和检索历史交互信息。包含：
   - **统一记忆 vs. 混合记忆**（短期 + 长期）
   - 不同的记忆格式（自然语言、结构化 JSON、向量嵌入）
   - 记忆操作（写入、读取、反思、遗忘）
3. **Planning（规划）模块**：分解复杂任务并制定执行计划。支持有无反馈两类策略：
   - **无反馈**：CoT、ToT、Self-Consistency
   - **有反馈**：Reflexion、自我修正、外部环境反馈
4. **Action（行动）模块**：执行具体行动，包含动作目标、生成、空间、影响四个维度。涵盖工具调用、文本生成、物理操作等。

**评估策略：** 综述还总结了**主观评估（人类标注、图灵测试）**与**客观评估（基准任务、自动指标）**两大类智能体评估方法。

**应用领域分类：**
- **社会科学**：社会模拟、心理学实验、政策评估
- **自然科学**：化学/生物实验自动化、材料发现
- **工程领域**：软件工程、机器人、推荐系统、对话助理

**挑战展望：** 推理能力的可靠性、角色扮演的稳定性、多智能体协作、安全与对齐、伦理与社会影响。

## 与本节的关联

Wang 等人的综述是本节论述**"智能体四大支柱"统一框架**的直接文献来源：
1. **四大支柱的理论锚定**：论文将"Profile/Memory/Planning/Action"作为论述智能体架构的标准框架——本节"大模型 / 会话记忆 / 工具调用 / 环境感知"四大支柱的表述可直接对照该综述的 Memory/Action/Planning 模块。
2. **项目架构的对照系**：AI4ADHD 项目的设计与综述四模块一一对应：
   - Profile = 智能体的 system prompt（ADHD 教练人设）
   - Memory = 项目记忆数据库 + 短期会话上下文
   - Planning = 任务拆解 + ReAct 推理
   - Action = Spring AI `@Tool` 接口调用
3. **应用领域定位**：项目属于"工程领域 - 对话助理 - 心理健康支持"分支，可援引此综述确立本项目在学术分类中的位置。
4. **统一记忆 vs. 混合记忆**：综述对记忆架构的两种范式区分，为本项目选择"混合记忆（短期会话 + 长期项目）"提供理论依据。
5. **挑战展望支撑未来工作**：综述列出的"推理可靠性"、"安全对齐"等开放问题，可作为论文§5 "未来工作"章节的文献根据。
6. **顶刊背书**：Frontiers of Computer Science 是 SCI 期刊，为论文引用增加权威性。
