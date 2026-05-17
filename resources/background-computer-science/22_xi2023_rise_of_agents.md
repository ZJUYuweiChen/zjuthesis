# Xi et al. 2023 — 基于大语言模型的智能体的崛起与潜力：综述

- **Authors**: Zhiheng Xi, Wenxiang Chen, Xin Guo, Wei He, Yiwen Ding, Boyang Hong, Ming Zhang, Junzhe Wang, Senjie Jin, Enyu Zhou, Rui Zheng, Xiaoran Fan, Xiao Wang, Limao Xiong, Yuhao Zhou, Weiran Wang, Changhao Jiang, Yicheng Zou, Xiangyang Liu, Zhangyue Yin, Shihan Dou, Rongxiang Weng, Wensen Cheng, Qi Zhang, Wenjuan Qin, Yongyan Zheng, Xipeng Qiu, Xuanjing Huang, Tao Gui
- **Year**: 2023
- **Venue**: arXiv:2309.07864（复旦大学 + 自然语言处理实验室）
- **DOI/arXiv ID**: arXiv:2309.07864
- **Citations**: 1500+
- **Source**: arXiv
- **Section relevance**: §2.1.2 智能体架构的范式迁移（智能体三层架构 + 历史演进）

## 摘要 (Abstract Summary)

复旦 NLP 实验室发布的另一篇全面综述，从**哲学起源、AI 发展史、统一框架、应用场景、社会涌现**五个维度系统阐述 LLM 智能体研究图景。该综述与同期 Wang 综述（2308.11432）并列，是该领域的两篇主导性参考文献。

**核心论述结构：**

1. **概念演进**：从亚里士多德的"自主行动者"哲学概念，到 1950s AI agent 的符号主义定义，再到 LLM 时代——智能体的内涵不断演化。综述论证 LLM 因其多任务通用性，**最接近 AGI 起点**的智能体内核。

2. **统一三层架构（脑-感知-行动）：**
   - **Brain（脑）**：以 LLM 为核心，承担推理、规划、决策、记忆、知识检索
   - **Perception（感知）**：扩展模态——视觉、听觉、其他传感器输入
   - **Action（行动）**：文本输出、工具调用、具身控制（embodiment）

3. **应用三类场景：**
   - **单智能体**：助手、专家系统、自动化执行
   - **多智能体**：协作（如 AutoGen）、对抗（如博弈仿真）、社会模拟
   - **人机协作**：以人为本的智能体辅助（Human-Agent Cooperation）

4. **智能体社会**：探讨智能体群体涌现的行为、个性化、社会现象，并讨论这些发现对人类社会的反向启示。

5. **开放问题**：可解释性、对齐、可信任性、可扩展性、伦理与安全。

**贡献价值：** 该综述以**"脑-感知-行动"三层架构**为认知框架，比 Wang 综述的四模块视角更接近经典 AI 智能体理论（Russell & Norvig），对智能体的"心智模型化"论述具有学理深度。

## 与本节的关联

Xi 综述在本节论述中提供以下支撑：
1. **三层架构 vs 四支柱的互补**：本节论述智能体四大支柱时，可同时引用 Xi 的"脑-感知-行动"框架作为另一种主流视角，体现领域共识——智能体研究已形成成熟的理论结构。
2. **历史演进维度**：综述对智能体概念从亚里士多德到 LLM 时代的追溯，为论文"从规则智能体到 LLM 智能体的范式迁移"叙述提供历史维度的文献依据。
3. **单/多/人机协作三场景**：AI4ADHD 项目属于"人机协作智能体"分支（Human-Agent Cooperation），明确该定位有助于在文献中建立项目位置。
4. **环境感知支柱**：论文四支柱中"环境感知"对应 Xi 综述的 Perception 层——本项目目前以文本交互为主，未来可扩展至语音、可穿戴设备等多模态输入，综述为此演进路线提供理论指引。
5. **顶尖 NLP 团队权威性**：复旦 NLP 是国内顶尖团队，邱锡鹏、黄萱菁等共著，引用具有高学术权重。
6. **配套 GitHub 仓库**：综述配套 LLM-Agent-Paper-List（GitHub）是该领域权威文献清单，可为论文相关文献完整性提供保障。
