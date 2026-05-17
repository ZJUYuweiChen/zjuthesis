# Vaswani et al. 2017 — Attention Is All You Need：仅基于注意力机制的Transformer架构

- **Authors**: Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Łukasz Kaiser, Illia Polosukhin
- **Year**: 2017
- **Venue**: NeurIPS 2017 (Advances in Neural Information Processing Systems)
- **DOI/arXiv ID**: arXiv:1706.03762
- **Citations**: 130,000+（Google Scholar，深度学习领域被引最高论文之一）
- **Source**: arXiv / NeurIPS Proceedings
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文提出了一种全新的序列建模架构——Transformer，彻底摒弃了主导序列转导任务的循环神经网络（RNN）和卷积神经网络（CNN），完全基于自注意力（Self-Attention）机制构建编码器-解码器结构。Transformer 的核心创新包括：(1) **缩放点积注意力**（Scaled Dot-Product Attention），通过 $\mathrm{Attention}(Q,K,V)=\mathrm{softmax}(QK^\top/\sqrt{d_k})V$ 实现并行化的全局依赖建模；(2) **多头注意力**（Multi-Head Attention），通过多个并行的注意力子空间增强模型表示能力；(3) **位置编码**（Positional Encoding），通过正弦/余弦函数注入序列位置信息以弥补无序结构的缺陷；(4) 残差连接与层归一化组合稳定深层网络训练。在 WMT 2014 英德翻译任务上，Transformer 模型取得 28.4 BLEU，比此前最佳结果（包括集成模型）提升 2 BLEU 以上；在英法翻译任务上达到 41.8 BLEU，创单模型新记录。Transformer 仅需在 8 张 P100 GPU 上训练 3.5 天，训练成本远低于此前的最优系统。论文同时证明 Transformer 可成功迁移到英语成分句法分析等其他任务，展示了优秀的通用性。Transformer 的并行化优势打破了 RNN 串行计算的瓶颈，为后续 BERT、GPT 等大规模预训练模型奠定了架构基础。

## 与本节的关联

本论文是支撑§2.1.2 第一段"大语言模型的发展与能力演进"叙事起点的奠基性文献。它定义了所有现代大语言模型的底层架构——AI4ADHD 项目所依赖的 DeepSeek、Qwen、GPT 等模型本质上都是 Transformer 变体或扩展。引用此论文可以论证两点关键：第一，**LLM 技术栈成熟的工程基础**——自注意力的并行化使得训练参数规模达千亿级的模型在工程上变得可行，这是 AI4ADHD 选用云端 LLM 服务而非自训小模型的根本前提；第二，**注意力机制的可解释性与上下文整合能力**为 LLM 在 ADHD 干预场景下处理"用户长期会话历史 + 当前任务上下文"提供了原理基础，对应项目中"会话记忆模块"的设计理念。论文中关于位置编码与多头注意力的设计，亦是本毕设论文在介绍 Spring AI 智能体如何使用长上下文模型时不可绕过的技术背景。
