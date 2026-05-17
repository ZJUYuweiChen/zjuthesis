# Wang et al. 2023 — Plan-and-Solve 提示: 改进大语言模型零样本链式推理

- **Authors**: Lei Wang, Wanyu Xu, Yihuai Lan, Zhiqiang Hu, Yunshi Lan, Roy Ka-Wei Lee, Ee-Peng Lim
- **Year**: 2023
- **Venue**: ACL 2023 (Long Paper); arXiv:2305.04091（新加坡管理大学 + 西南交通大学 + 新加坡科技设计大学 + 华东师范大学）
- **DOI/arXiv ID**: arXiv:2305.04091
- **Citations**: 500+
- **Source**: arXiv / ACL Anthology
- **Section relevance**: §2.1.2 智能体架构的范式迁移（推理增强方法 + 任务分解）

## 摘要 (Abstract Summary)

Wang 等人提出 **Plan-and-Solve（PS）提示** 策略，扩展 Kojima 的"Let's think step by step"零样本 CoT 思想，引入**显式两阶段规划**——先全局规划再分步执行，显著缓解零样本 CoT 的常见缺陷。

**问题背景：** 作者通过分析 GSM8K 数学题上 GPT-3 Zero-shot-CoT 的 46 个错误案例，发现三类系统性问题：
- **计算错误（Calculation Error）**：7%
- **缺失步骤错误（Step Missing Error）**：12%（CoT 跳过必要中间步骤）
- **语义理解错误（Semantic Misunderstanding）**：27%

**核心方法：**

1. **PS 提示**：将传统 Zero-shot-CoT 的提示从 *"Let's think step by step"* 改为：
   > "Let's first understand the problem and devise a plan to solve it. Then, let's carry out the plan and solve the problem step by step."
   
   这强迫模型**先规划再执行**，缓解 step missing 问题。

2. **PS+ 提示**：在 PS 基础上加入更详细的指令（如"提取相关变量"、"逐步推导"、"重点关注计算"），进一步降低计算错误率。

**实验结果：**
- 在 GSM8K、AQuA、SVAMP、MultiArith 等 **10 个数据集 × 3 类推理任务**（算术、常识、符号）上的全面评估。
- PS 提示稳定**超越 Zero-shot-CoT 大幅度**，**接近 8-shot manual CoT**的表现，**且无需任何示例**。
- 与 Zero-shot Program-of-Thought（让 LLM 生成代码）相比性能相当或更优。

**理论贡献：** 论文确立了"**规划—执行**"两阶段提示策略作为零样本推理的强基线，并实证了"先规划"对长链推理的关键作用。这一思想被后续众多智能体框架（包括 ReWOO、Plan-Execute、AutoGPT）采纳。

## 与本节的关联

Plan-and-Solve 论文在本节论述中提供"任务规划范式"的核心文献支撑：
1. **任务分解理论根据**：AI4ADHD 项目的关键功能是把用户的大目标（"两周内写完论文"）拆解为可执行的子任务序列。Plan-and-Solve 是 LLM 完成此类分解的理论模板——先生成 plan，再逐步 solve。
2. **零样本部署可行性**：论文证明仅靠提示工程（无需领域微调）即可获得稳定规划能力，这与本项目"采用通用 Qwen 模型 + 精心设计的 prompt"的工程路线高度契合。
3. **错误类型分类的工程启示**：论文对 CoT 错误的三类分析（计算/步骤缺失/语义理解）为本项目设计智能体异常处理与降级策略提供分类框架——例如计算错误可由工具调用补偿，步骤缺失由 ReAct 循环修正，语义理解由澄清问询缓解。
4. **PS+ 详细指令**：本项目智能体的 system prompt 设计应汲取 PS+ 思路——在通用规划之外，加入领域专属指令（如"先评估用户精力水平"、"考虑用户历史拖延模式"），提升任务规划的针对性。
5. **ACL 2023 顶会发表**：作为 NLP 顶会长文，方法的学术认可度高，是本节引用任务规划相关方法时的有力锚点。
