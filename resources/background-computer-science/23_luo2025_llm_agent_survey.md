# Luo et al. 2025 — 大语言模型智能体综述：方法论、应用与挑战

- **Authors**: Junyu Luo, Weizhi Zhang, Ye Yuan, Yusheng Zhao, Junwei Yang, Yiyang Gu, Bohan Wu, Binqi Chen, Ziyue Qiao, Qingqing Long, Rongcheng Tu, Xiao Luo, Wei Ju, Zhiping Xiao, Yifan Wang, Meng Xiao, Chenwu Liu, Jingyang Yuan, Shichang Zhang, Yiqiao Jin, Fan Zhang, Xian Wu, Hanqing Zhao, Dacheng Tao, Philip S. Yu, Ming Zhang
- **Year**: 2025
- **Venue**: arXiv:2503.21460（北京大学 + 加州大学洛杉矶分校 + 伊利诺伊大学芝加哥分校等）
- **DOI/arXiv ID**: arXiv:2503.21460
- **Citations**: 数十至上百（新近发布，正在快速积累）
- **Source**: arXiv / Awesome-Agent-Papers (GitHub)
- **Section relevance**: §2.1.2 智能体架构的范式迁移（最新综述，方法论中心视角）

## 摘要 (Abstract Summary)

Luo 等人发布于 2025 年 3 月的最新综述，提供截至 2025 年的 LLM 智能体研究全景。该综述与 Wang (2023)、Xi (2023) 形成"三层综述时序"——分别覆盖 2023 早期、2023 末期、2025 前沿，为本论文撰写提供从奠基到最新的连续文献链。

**方法论中心分类（Methodology-centered Taxonomy）：** 综述以"构造—协作—演化"三阶段方法论为轴线：

1. **架构基础（Architectural Foundations）**
   - 智能体核心组件解析：推理引擎、记忆系统、工具接口、感知通道
   - 核心范式回顾：ReAct、Reflexion、CoT、ToT、Plan-and-Solve
   - 工具链生态：Function Calling、MCP、Agent Frameworks（LangChain、AutoGen、Spring AI 等）

2. **协作机制（Collaboration Mechanisms）**
   - 多智能体协作：角色扮演、辩论、投票、分工
   - 人机共生：人在环路（Human-in-the-loop）设计
   - 通信协议：消息传递、共享黑板、协调器

3. **演化路径（Evolutionary Pathways）**
   - 自我改进：在线学习、终身学习、反思—修正循环
   - 工具自我扩展：智能体生成新工具
   - 群体涌现：智能体社会规则的演化

**评估体系：** 综述系统化整理了 AgentBench、ToolBench、GAIA、SWE-Bench 等主流评估基准与指标。

**应用领域：** 软件工程、科学发现、医疗、金融、教育、心理健康支持、政府服务等。

**挑战章节：** 推理可靠性、可扩展性、安全对齐、隐私、能耗、社会影响。

## 与本节的关联

Luo 综述（2025）是本论文截至当前**最新颖、最综合的智能体综述参考**，已在 ref.bib 中存在：
1. **时效性优势**：本论文 2026 年完成，需要 2025 年最新综述作为现状定位文献，Luo 综述弥补了 Wang/Xi 综述发布于 2023 年初期、未覆盖近两年关键工作（如 MCP、AutoGen、Spring AI 等）的时效盲点。
2. **方法论中心视角**：与 Wang 的"模块视角"、Xi 的"脑-感知-行动"视角不同，Luo 强调"构造—协作—演化"方法论维度，对论证项目智能体的工程实现路径更具直接指导意义。
3. **工具链生态最新归纳**：综述包含 LangChain、AutoGen、Spring AI Alibaba 等近期工程框架的对比，为本项目选择 Spring AI Alibaba 作为后端框架提供文献依据。
4. **AgentBench / SWE-Bench 等基准**：可为论文性能评估章节引用作为标准化评估方法的参考。
5. **心理健康应用领域**：综述明确列出"心理健康支持"为 LLM 智能体的重要应用方向之一，为本项目（AI4ADHD 服务于 ADHD 与拖延人群）的领域定位提供权威认可。
6. **GitHub 仓库**：Awesome-Agent-Papers 提供持续更新的相关文献清单，可作为本论文背景调研的滚动文献源。
