# Yao et al. 2023 — Tree of Thoughts: 大语言模型的深思熟虑问题求解

- **Authors**: Shunyu Yao, Dian Yu, Jeffrey Zhao, Izhak Shafran, Thomas L. Griffiths, Yuan Cao, Karthik Narasimhan
- **Year**: 2023
- **Venue**: NeurIPS 2023; arXiv:2305.10601
- **DOI/arXiv ID**: arXiv:2305.10601
- **Citations**: 3000+
- **Source**: arXiv / Princeton NLP
- **Section relevance**: §2.1.2 智能体架构的范式迁移（推理增强方法）

## 摘要 (Abstract Summary)

Yao 等人提出 **思维树（Tree of Thoughts, ToT）** 框架，将 CoT 从"线性单链推理"扩展为"**树状探索式推理**"，使 LLM 具备在多条推理路径间进行**有意识的决策、前瞻与回溯**的能力。

**核心方法：** ToT 将"思想（thought）"定义为推理过程中具有自包含语义的中间步骤，并以树搜索算法（BFS/DFS）组织这些思想：
1. **思想分解（Thought Decomposition）**：把问题分解为有意义的中间状态
2. **思想生成（Thought Generation）**：在每个状态生成多个候选下一步思想
3. **状态评估（State Evaluation）**：LLM 自身对每条路径打分（value）或投票（vote），判断其前景
4. **搜索算法**：以广度优先或深度优先扩展前景较高的分支

**关键实验：**
- **Game of 24（24 点游戏）**：GPT-4 + CoT 仅解决 **4%** 的问题，而 GPT-4 + ToT 达到 **74%**，显示出 18 倍的能力跃升。
- **Creative Writing（创意写作）**：ToT 生成的文本被人类评估为更连贯。
- **Mini Crosswords（迷你填字游戏）**：ToT 较 CoT 单词级正确率提升 60% 以上。

**理论意义：** ToT 是首个将"系统 2 思维（System 2, 慢思考）"显式工程化嵌入 LLM 推理过程的方法。它表明仅靠 in-context learning 与提示策略，即可让 LLM 模拟人类的"反思式深思熟虑"，进一步缩短了 LLM 智能与人类高级认知功能的距离。

## 与本节的关联

ToT 在本节中的论述价值：
1. **从单链到树状的范式演进**：CoT→ToT→Reflexion 是论文论述"推理增强方法演化路径"的标准三步框架。ToT 在此处证明 LLM 已具备**前瞻规划与回溯纠错**能力，标志智能体可以处理需要"探索—剪枝"的复杂任务。
2. **对应项目的多路径任务规划**：AI4ADHD 项目在面对用户复杂目标（如"两个月内完成毕业论文+实习"）时，需要为用户生成多条可行子计划并评估其可行性。ToT 的"思想生成—评估—选择"模式恰是这一功能的理论原型。
3. **自我评估能力的基础**：ToT 中 LLM 对自身路径打分的能力，是本项目"任务难度估计"功能的基础——智能体可以预先评估"这个任务是否对当前用户过难、需要进一步拆分"。
4. **24 点游戏 74% vs 4% 数据**：为论文提供"推理增强方法显著扩展智能体边界"的有力定量证据。
