# DeepSeek-AI 2024 — DeepSeek-V3 Technical Report：6710 亿参数 MoE 国产开源大模型

- **Authors**: DeepSeek-AI Team（DeepSeek-AI，集体署名，约 200 名研究者）
- **Year**: 2024（首次发布），2025 年 v2 修订
- **Venue**: arXiv（DeepSeek 官方技术报告）
- **DOI/arXiv ID**: arXiv:2412.19437
- **Citations**: 2,000+（2025 年内快速增长）
- **Source**: arXiv / DeepSeek-AI
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本技术报告介绍 DeepSeek-V3——一个总参数 **6710 亿（671B）、每 token 激活 370 亿（37B）** 的混合专家（Mixture-of-Experts，MoE）大语言模型，是国产开源大模型对标顶级闭源模型（GPT-4o、Claude-3.5-Sonnet）的里程碑工作。架构上，DeepSeek-V3 沿用并扩展 DeepSeek-V2 中验证有效的 **Multi-head Latent Attention (MLA)** 与 **DeepSeekMoE** 设计，并首创：(1) **无辅助损失的负载均衡策略**（auxiliary-loss-free load balancing），通过在路由 logits 上动态调整偏置实现专家负载平衡，避免传统辅助损失对模型性能的损害；(2) **多 token 预测（Multi-Token Prediction，MTP）训练目标**，让模型同时预测多个未来 token，增强表示学习并支持推理时的投机解码。预训练使用 14.8 万亿高质量多样化 tokens，后接 SFT 与 RL 阶段。**训练成本仅 2.788M H800 GPU 小时**，约 600 万美元，远低于同等水平闭源模型。基准评测显示：DeepSeek-V3 在 MMLU-Pro 达 75.9、MATH 500 达 90.2、GPQA-Diamond 达 59.1、SWE-bench Verified 达 42.0，整体性能超越 Qwen2.5-72B-Inst、Llama-3.1-405B-Inst，与 GPT-4o 和 Claude-3.5-Sonnet 各有千秋。训练过程"显著稳定"，未出现不可恢复的损失尖峰或回退。模型权重在 GitHub/HuggingFace 完全开源，标志着国产开源 LLM 进入世界第一梯队。

## 与本节的关联

DeepSeek-V3 是支撑§2.1.2 中"国产大模型崛起与对标"叙事的最有力直接证据。本毕设论文 AI4ADHD 项目以阿里云百炼平台对接的国产模型（含 DeepSeek 系列）作为智能体底座，其合理性的核心论据正是：**国产开源模型已在客观基准上达到与 GPT-4o / Claude-3.5 同级别的能力**。引用本论文具体可以论证：(1) **能力对等**——MMLU-Pro 75.9、MATH 500 90.2 等数据足以证明国产 LLM 完全能胜任 ADHD 任务管理这一应用层场景；(2) **成本经济性**——600 万美元的训练成本与每百万 tokens 0.27/1.10 美元的极低 API 定价，使个人项目可在可负担成本下接入顶尖 LLM 服务；(3) **可控可改**——开源权重允许在合规前提下进一步对特定任务（如心理干预对话）做轻量化适配。MoE 架构带来的"激活参数远小于总参数"特性，也为本毕设论文中关于"LLM 工程化部署成本下降"的论述提供工程依据。
