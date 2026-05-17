# Bai et al. 2023 — Qwen Technical Report：阿里巴巴通义千问大模型系列技术报告

- **Authors**: Jinze Bai, Shuai Bai, Yunfei Chu, Zeyu Cui, Kai Dang, Xiaodong Deng, Yang Fan, Wenbin Ge, Yu Han, Fei Huang, Binyuan Hui, Luo Ji, Mei Li, Junyang Lin, Runji Lin, Dayiheng Liu, Gao Liu, Chengqiang Lu, Keming Lu, Jianxin Ma, Rui Men, Xingzhang Ren, Xuancheng Ren, Chuanqi Tan, Sinan Tan, Jianhong Tu, Peng Wang, Shijie Wang, Wei Wang, Shengguang Wu, Benfeng Xu, Jin Xu, An Yang, Hao Yang, Jian Yang, Shusheng Yang, Yang Yao, Bowen Yu, Hongyi Yuan, Zheng Yuan, Jianwei Zhang, Xingxuan Zhang, Yichang Zhang, Zhenru Zhang, Chang Zhou, Jingren Zhou, Xiaohuan Zhou, Tianhang Zhu (Qwen Team, Alibaba Group)
- **Year**: 2023（9 月）
- **Venue**: arXiv（阿里巴巴 Qwen Team 官方技术报告）
- **DOI/arXiv ID**: arXiv:2309.16609
- **Citations**: 1,500+
- **Source**: arXiv / 阿里巴巴 Qwen Team
- **Section relevance**: §2.1.2 大语言模型的发展与能力演进

## 摘要 (Abstract Summary)

本技术报告介绍 QWEN（通义千问）——阿里巴巴大模型系列的首篇综合技术报告。论文涵盖：(1) **QWEN 基础语言模型**：参数从 1.8B、7B、14B 到 72B 不等的多尺度预训练模型，使用约 3 万亿 tokens 训练，覆盖中文、英文、代码、数学等多领域语料；架构上采用 RoPE 旋转位置编码、SwiGLU 激活、RMSNorm 等改进；通过 NTK-aware 插值等技术扩展上下文长度到 32K tokens。(2) **QWEN-CHAT 对话模型**：在 SFT + RLHF 后训练得到，对齐人类偏好的对话能力；具备**工具调用、计划生成、代码解释器使用**等智能体（agent）能力，可在复杂任务（如调用 Python 处理数据、调用搜索 API 等）中展现强大表现。(3) **CODE-QWEN / CODE-QWEN-CHAT 编程专精模型**：在 QWEN 基础上以代码语料持续预训练并微调，HumanEval/MBPP 上接近闭源模型。(4) **MATH-QWEN-CHAT 数学专精模型**：在中英文数学题上做监督训练，显著优于同规模通用模型。论文广泛对比 LLaMA、ChatGLM、Baichuan 等同期开源模型，并在 MMLU、C-Eval、CMMLU、GSM8K、HumanEval 等中英文基准上展现领先性能。Qwen 系列是国内首个全面开源、且持续迭代到 Qwen2、Qwen2.5、Qwen3 的旗舰国产大模型品牌，亦是阿里云"百炼"平台的核心模型。

## 与本节的关联

Qwen Technical Report 是支撑§2.1.2"国产大模型崛起与对标"叙事的**直接关键文献**——因为 AI4ADHD 项目正是通过 **Spring AI Alibaba 框架对接 Qwen 系列模型**（基于阿里云百炼平台）。引用本论文具体支撑：(1) **国产 LLM 的工程成熟度**——Qwen 不仅是基础模型，更是包含基础+对话+编程+数学四套模型的"系列产品"，体现国产团队对全栈大模型生态的把控能力；(2) **智能体能力天然支持**——论文专章介绍 Qwen-Chat 的工具调用与代码解释器功能，这正是 AI4ADHD 项目"LLM + 工具调用"架构的能力基础；(3) **多语言与中文优化**——Qwen 在 C-Eval、CMMLU 中文基准上的优势，使其更适合服务中文 ADHD 用户群体，输出符合中文表达习惯的干预话术；(4) **持续迭代承诺**——从 Qwen 到 Qwen3 的快速演进显示供应商的长期投入，为本毕设项目所依赖的 LLM 服务可持续性提供保障。
