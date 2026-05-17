# Yang et al. 2024 — Qwen2 Technical Report：阿里通义千问第二代多语言开源大模型

- **Authors**: An Yang, Baosong Yang, Binyuan Hui, Bo Zheng, Bowen Yu, Chang Zhou, Chengpeng Li, Chengyuan Li, Dayiheng Liu, Fei Huang, Guanting Dong, Haoran Wei, Huan Lin, Jialong Tang, Jialin Wang, Jian Yang, Jianhong Tu, Jianwei Zhang, Jianxin Ma, Jianxin Yang, Jin Xu, Jingren Zhou, Jinze Bai, Jinzheng He, Junyang Lin, Kai Dang, Keming Lu, Keqin Chen, Kexin Yang, Mei Li, Mingfeng Xue, Na Ni, Pei Zhang, Peng Wang, Ru Peng, Rui Men, Ruize Gao, Runji Lin, Shijie Wang, Shuai Bai, Sinan Tan, Tianhang Zhu, Tianhao Li, Tianyu Liu, Wenbin Ge, Xiaodong Deng, Xiaohuan Zhou, Xingzhang Ren, Xinyu Zhang, Xipin Wei, Xuancheng Ren, Xuejing Liu, Yang Fan, Yang Yao, Yichang Zhang, Yu Wan, Yunfei Chu, Yuqiong Liu, Zeyu Cui, Zhenru Zhang, Zhifang Guo, Zhihao Fan (Qwen Team, Alibaba Group)
- **Year**: 2024（7 月）
- **Venue**: arXiv（阿里巴巴 Qwen Team 官方技术报告）
- **DOI/arXiv ID**: arXiv:2407.10671
- **Citations**: 1,800+（半年内迅速积累）
- **Source**: arXiv / 阿里巴巴 Qwen Team
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本文介绍 Qwen2 系列——阿里巴巴通义千问的第二代旗舰大模型，参数规模从 **0.5B 到 72B**，包含 Dense 模型与 Mixture-of-Experts（MoE，57B-A14B）模型，并同步发布基础（Base）与指令微调（Instruct）两个版本。Qwen2 全面超越 Qwen1.5 与多数同期开源模型，并在多项基准上挑战闭源模型。**Qwen2-72B 基础模型**在 MMLU 取得 84.2、GPQA 37.9、HumanEval 64.6、GSM8K 89.5、BBH 82.4，**Qwen2-72B-Instruct** 在 MT-Bench 取得 9.1、Arena-Hard 48.1、LiveCodeBench 35.7。论文亮点：(1) **多语言能力大幅强化**——熟练掌握约 30 种语言，包括英文、中文、西班牙文、法文、德文、阿拉伯文、俄文、韩文、日文、泰文、越南文等，体现全球化定位；(2) **长上下文能力**——通过 YARN 等技术将上下文扩展至 128K tokens，对长文档理解、多轮对话历史保留至关重要；(3) **数据创新**——使用协作式数据标注 + 自动化数据合成（拒绝采样、人工偏好引导生成）大幅提升后训练数据质量；(4) **MoE 模型 Qwen2-57B-A14B** 引入业界领先的稀疏激活策略，在保持 14B 激活参数推理成本的同时达到中大规模 dense 模型水平。模型权重在 Hugging Face、ModelScope 完全开源，并提供量化、微调、部署工具链，极大降低开发门槛。Qwen2 是国产大模型生态在 2024 年最具影响力的里程碑发布之一。

## 与本节的关联

Qwen2 是支撑§2.1.2 中"LLM 在自然语言理解、长上下文推理、个性化生成方面的能力提升"叙事的**最近、最直接、最贴近 AI4ADHD 项目实际使用环境**的文献。本毕设项目通过 Spring AI Alibaba 对接的阿里云百炼平台，其默认模型即为 Qwen 系列（含 Qwen2 / Qwen2.5）。引用本论文可以论证：(1) **多尺度可选性**——从 0.5B 到 72B 的全谱系模型允许项目根据成本/性能需求灵活选型，例如离线开发可用 7B，生产环境用 72B；(2) **长上下文（128K）支持**——为项目设计的"会话记忆模块"和"用户任务全历史回顾"等功能提供模型层支持，使智能体能够保留用户数日乃至数周的任务管理上下文；(3) **多语言能力**——Qwen2 对中文的优化使其能够输出贴合中国 ADHD 用户文化语境的话术；(4) **持续迭代承诺**——Qwen 团队自 Qwen1 到 Qwen2 再到后续 Qwen2.5、Qwen3 的高速迭代节奏，证明国产 LLM 生态可持续供应顶级能力，为本毕设论文项目所选用的技术栈提供长期可靠性背书。
