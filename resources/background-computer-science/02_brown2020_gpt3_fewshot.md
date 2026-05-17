# Brown et al. 2020 — Language Models are Few-Shot Learners：GPT-3 与少样本学习能力涌现

- **Authors**: Tom B. Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared Kaplan, Prafulla Dhariwal, Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, Sandhini Agarwal, Ariel Herbert-Voss, Gretchen Krueger, Tom Henighan, Rewon Child, Aditya Ramesh, Daniel M. Ziegler, Jeffrey Wu, Clemens Winter, Christopher Hesse, Mark Chen, Eric Sigler, Mateusz Litwin, Scott Gray, Benjamin Chess, Jack Clark, Christopher Berner, Sam McCandlish, Alec Radford, Ilya Sutskever, Dario Amodei
- **Year**: 2020
- **Venue**: NeurIPS 2020
- **DOI/arXiv ID**: arXiv:2005.14165
- **Citations**: 40,000+
- **Source**: arXiv / NeurIPS Proceedings
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文提出 GPT-3，一个具有 1750 亿参数（175B）的自回归大语言模型，参数规模比此前任何非稀疏语言模型大 10 倍以上。论文的核心论点是：通过规模化，语言模型可以无需任何梯度更新或微调，仅通过自然语言指令和少量样例（few-shot demonstrations）就完成新任务，这一能力被称为"上下文学习"（in-context learning）。GPT-3 在数十项 NLP 基准上进行了零样本（zero-shot）、单样本（one-shot）、少样本（few-shot）三种设定的评测：在 LAMBADA、StoryCloze、HellaSwag 等语言建模与完形填空任务上达到或超过此前的精调系统；在翻译任务中，少样本设定下的 GPT-3 在多语言对上超越无监督 NMT；在 SuperGLUE 等综合基准上展现出与 BERT-Large 精调相当的性能。论文还显示 GPT-3 可执行三位数四则运算、单词反混淆、新词造句等需要即时推理的任务，并能生成新闻片段以致人工评测者难以与真人撰写区分。同时论文坦承 GPT-3 在某些任务（如自然语言推理、阅读理解）仍存在短板，并讨论了数据污染、社会影响等问题。GPT-3 的发布标志着 LLM 从"特定任务专门化"向"通用智能涌现"的范式转变，并直接催生了 ChatGPT 等改变全球 AI 格局的产品。

## 与本节的关联

本论文对支撑§2.1.2 关于"LLM 从基础架构走向通用人工智能能力"的论述至关重要。它首次系统证明：参数规模与训练数据扩张能催生"涌现能力"（emergent abilities），让模型从专才转化为通才。这一点对 AI4ADHD 项目设计有直接意义：拖延症管理智能体需要灵活地理解用户多样化的自然语言输入（任务描述、情绪宣泄、规划请求等），并能即时调整策略——正是 GPT-3 所展示的少样本/上下文学习能力使得这一交互范式可行，无需为每位 ADHD 用户单独微调模型。引用本文可以论证：项目采用 LLM 作为对话内核而非传统规则引擎或浅层 NLU 系统的合理性。此外，论文揭示的"175B 参数规模带来的能力跃迁"为后续 DeepSeek、Qwen 等国产大模型不断扩张参数提供了理论依据，亦是本节论述"国产大模型对标趋势"的逻辑前提。
