# Corbett & Weber 2016 — "我能说什么？"：移动设备语音界面用户期望与可发现性研究

- **Authors**: Eric Corbett; Astrid Weber
- **Year**: 2016
- **Venue**: Proceedings of the 18th International Conference on Human-Computer Interaction with Mobile Devices and Services (MobileHCI '16), pp. 72–82
- **DOI/arXiv ID**: 10.1145/2935334.2935386
- **Citations**: 132+ (CrossRef)
- **Source**: ACM Digital Library / CrossRef
- **Section relevance**: §2.1.2 对话式交互与认知支持理论

## 摘要 (Abstract Summary)

本文是 MobileHCI 2016 上发表的语音用户界面（Voice User Interface, VUI）可用性研究的经典论文。研究背景指出，随着 Siri、Google Now、Cortana 等移动语音助手快速普及，用户在日常使用中面临一个核心问题：**"我能对它说什么？"**——即语音界面缺乏视觉提示，用户难以发现可用功能的能力边界（discoverability problem）。作者通过两阶段混合方法研究：(1) 在线问卷调查（N=120）了解用户的语音助手使用习惯、心智模型与挫败点；(2) 实验室深度访谈（N=12）观察用户在真实任务下的语音交互过程并记录"为什么不说"的场景。研究发现的核心结论包括：第一，用户的语音助手心智模型与系统真实能力之间存在显著偏差，多数用户低估了系统能力（仅使用最常见的搜索、提醒、电话等功能），少数用户高估系统能力（期待自然对话与情感理解）；第二，用户在不熟悉的场景下倾向于沉默，宁愿切换到键盘输入也不愿冒险尝试语音；第三，社交情境（公开场合、他人在场）显著降低语音使用意愿，体现"社交摩擦"对接受度的影响；第四，错误响应严重打击用户信心，单次失败后用户重试率显著下降。作者据此提出 VUI 设计的三项原则：**主动提示能力（proactive capability suggestion）、缩短反馈延迟（minimize response latency）、降低社交摩擦（reduce social friction）**。论文为后续语音助手交互设计提供了实证基线。

## 与本节的关联

本论文直接支撑§2.1.2 第四段"低干扰、防挫败、强引导"设计原则在**多模态交互**层面的论证。AI4ADHD 项目通过 VoiceTokenService（基于阿里云 NLS SDK）提供语音输入支持，这一选择对 ADHD 用户具有特殊价值——书写任务对工作记忆负载更高，而语音输入可减轻"先组织语言再打字"的认知开销。然而，论文揭示的"我能说什么"问题恰恰是项目实践语音功能时的核心障碍：ADHD 用户本就受任务启动困难影响（见 [[19_saele2026_metacognitive_procrastination]]、[[14_seesjarvi2025_time_prospective_memory_adhd]]），若再加上语音界面发现性差，会进一步抑制使用。项目应据此采取以下措施：(1) **主动提示能力**——在录音 UI 上提供示例语句（"试试说'帮我把这个项目拆分成5个步骤'"），降低用户发现成本；(2) **可视化反馈延迟**——通过波形动画显示语音正在识别，避免静默等待造成的焦虑；(3) **支持模态切换**——若语音失败可一键转为文字输入，符合论文"提供退路"原则；(4) **降低社交摩擦**——支持耳机模式与短指令模式，避免用户在办公环境中尴尬。论文与 [[38_luger2016_bad_pa_conversational_agents]] 共同确立了"期望-体验鸿沟"是会话/语音 AI 设计的根本难题，必须通过显式的能力声明与渐进信任建立来弥合。
