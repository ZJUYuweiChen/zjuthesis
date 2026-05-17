# Touvron et al. 2023 — LLaMA: Open and Efficient Foundation Language Models：开源高效基础语言模型

- **Authors**: Hugo Touvron, Thibaut Lavril, Gautier Izacard, Xavier Martinet, Marie-Anne Lachaux, Timothée Lacroix, Baptiste Rozière, Naman Goyal, Eric Hambro, Faisal Azhar, Aurelien Rodriguez, Armand Joulin, Edouard Grave, Guillaume Lample
- **Year**: 2023
- **Venue**: arXiv（Meta AI 官方技术报告）
- **DOI/arXiv ID**: arXiv:2302.13971
- **Citations**: 14,000+
- **Source**: arXiv / Meta AI
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文提出 LLaMA（Large Language Model Meta AI）——一个参数从 70 亿（7B）到 650 亿（65B）的基础语言模型系列，**完全使用公开可获取的训练数据**（CommonCrawl、C4、GitHub、Wikipedia、Books、arXiv、StackExchange 等共约 1.4 万亿 tokens）。论文挑战了"参数越大越好"的常规假设：基于 Hoffmann et al. (2022) 的 Chinchilla scaling laws，LLaMA 选择训练更小模型于更多数据上，以求最佳的"训练成本 + 推理成本"权衡。结果显示：**LLaMA-13B 在多数基准上超过 GPT-3（175B），LLaMA-65B 与 Chinchilla-70B、PaLM-540B 等顶级闭源模型相当**——尽管 LLaMA-13B 比 GPT-3 小 10 倍以上。架构上，LLaMA 在标准 Transformer 基础上引入 RMSNorm 归一化、SwiGLU 激活函数、Rotary Positional Embedding（RoPE）等改进。论文承诺将所有模型权重开放给研究社区，意外触发了开源 LLM 生态的爆发——Alpaca、Vicuna、LLaMA-2、LLaMA-3 等衍生模型迅速涌现，奠定了开源 LLM 与闭源 LLM 并行竞争的格局。本论文是开源大模型运动的里程碑，证明小规模学术机构与企业亦可获得接近 SOTA 的语言模型能力。

## 与本节的关联

LLaMA 论文在§2.1.2 的叙事中扮演"开源浪潮起点"的关键角色。**国产大模型（DeepSeek、Qwen、ChatGLM、Baichuan）的崛起在很大程度上是 LLaMA 开源生态的延续与超越**——许多国产模型借鉴了 LLaMA 的架构改进（RoPE、RMSNorm、SwiGLU），并在中文语料、多语言对齐、长上下文等维度做出本土化突破。引用此论文可以论证：本毕设 AI4ADHD 项目所采用的国产开源模型（如 Qwen2、DeepSeek-V3）并非凭空出现，而是站在 LLaMA 所开启的"高质量数据 + 高效架构 + 中等规模"路线之上。此外，LLaMA-13B 优于 GPT-3 的结果说明：**对于个人项目级的应用而言，10B-70B 级别的模型已足以满足任务管理智能体所需的能力**，无需依赖千亿参数闭源模型，这为 AI4ADHD 项目使用阿里云百炼 / DeepSeek API 提供了能力底线支撑。
