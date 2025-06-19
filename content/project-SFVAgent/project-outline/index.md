---
title: "Project-SFVAgent - Project Outline"
date: 2025-06-16T22:17:42+04:00
lastmod: 2025-06-16T22:17:42+04:00
draft: false
slug: "project-outline"
tags: ["master thesis", "short-form video", "multi-modal", "multi-agent", "edge deployment"]
categories: ["project"]
description: ""
author: "Archy Tseng"
series: ["Master Thesis Project"]
series_order: 1
---
## 1. Title
"**SFVAgent: A Lightweight Short-Form-Video Agent by introducing Cross-Modal Alignment and Dynamic Multi-Agent Orchestration Strategies**"<br>
《短视频智能体：跨模态对齐驱动的动态多智能体编排的轻量级的短视频智能体应用》
### 1.1 Title Revealment
- **Core Inspiration:** "Cross-Modal Alignment" - the Multimodal Alignment technique application.
- **Methodology:** "Dynamic Multi-Agent Orchestration" - Schedul different Agent tasks dynamiclly.
- **Application:** "Lightweight Short-Form-Video" - Deploy the whole offline pipeline locally.

## 2. Pipeline Design
### 2.1 Background Research - (**Week 1**)
- **Target:** Check and select all references highly related to "Multi-Agent", "Cross-Modal Alignment","Edge Deployment" <br> 梳理动态多智能体编排、跨模态对齐、边缘部署的最新学术进展与工程实践。
- **Method:**
    - Thesis Collection: Search thesis and references highly related to "Multi-Agent"(like Agno Framework), "Multimodal Learning"(like CLIP), "Edge AI"(like TinyML) from ACL、NeurIPS、ICML.<br> 检索ACL、NeurIPS、ICML等顶会论文，聚焦多智能体系统（如Agno框架）、跨模态学习（如CLIP）、边缘AI（如TinyML）方向。
    - Open Souce Collection: Search and collect open resource like LangChain,Hugging Face Transformers from GitHub. <br> 分析GitHub开源项目（如LangChain、Hugging Face Transformers）中的多智能体协作与轻量级模型部署案例。
- **Reference:** 
  - [Unlocking Creator‑AI Synergy: Design Opportunities in AI‑Powered Short‑Form Video Production](https://dl.acm.org/doi/pdf/10.1145/3613904.3642476)
  - [FusionFrames: Efficient Architectural Aspects for Text‑to‑Video Generation Pipeline](https://arxiv.org/pdf/2311.13073)
  - [FlashVideo: A Framework for Swift Inference in Text‑to‑Video Generation](https://arxiv.org/pdf/2401.00869)
  - [SeriesBench: A Benchmark for Narrative‑Driven Drama Series Understanding](https://arxiv.org/pdf/2504.21435)
  - [VideoGen-of-Thought(**GitHub**)](https://github.com/DuNGEOnmassster/VideoGen-of-Thought)
  - [EcoAgent: An Efficient Edge-Cloud Collaborative Multi-Agent Framework for Mobile Automation](https://arxiv.org/pdf/2505.05440)
  - [MMAC‑Copilot: Multi-modal Agent Collaboration Operating System Copilot](https://arxiv.org/pdf/2404.18074)
  - [Multi‑Agent Collaborative Inference via DNN Decoupling](https://arxiv.org/pdf/2205.11854)
  - [Adaptive Orchestration for Inference of Large Foundation Models at the Edge](https://arxiv.org/pdf/2504.03668)
  - [Deploying Foundation Model Powered Agent Services: A Survey](https://arxiv.org/pdf/2412.13437v1)
  - [A Hybrid Swarm Intelligence Approach for Optimizing Multimodal Large Language Models Deployment in Edge-Cloud-based Federated Learning Environments](https://arxiv.org/pdf/2502.10419v1)
  - [A Survey of Machine Learning in Edge Computing: Techniques, Frameworks, Applications, Issues, and Research Directions](https://www.mdpi.com/2227-7080/12/6/81/xml)
- **Research Suggestion:**
  - 1. 多智能体 Orchestration + 边缘部署：EcoAgent、Adaptive Orchestration
	1. 多模态对齐 + 多智能体 协作：MMAC‑Copilot、Swarm-Intelligence-MLLM
	2. 轻量/压缩技术：Multi-Agent DNN Decoupling、MDPI 边缘 ML Survey
- **Pipeline Demo:**
  - 1.  设计脚本到关键帧 pipeline（借鉴 FusionFrames 架构)
	2.	引入 VideoGen-of‑Thought 多镜头生成策略；
	3.	结合 FlashVideo 推理速度优化架构以适配 MacBook；
	4.	用 SeriesBench benchmark 对生成结果进行剧情连贯性与理解评估；
	5.	引用 CHI 设计研究中的用户需求分析指导 agent 协作设计。
### 2.2 Data Collection - (**Week 2**)
- **Target:** Select "Script - Storyboard - Rendering" triple data, used for cross-modal alignment training. <br> 获取剧本-分镜-图像三元组数据，用于跨模态对齐训练。
- **Method:**
  - First consider to use open dataset(like Cogvideo), or generate dataset by ChatGPT , Stable Diffusion.
- **Reference:**
  - [SkyScript-100M:1,000,000,000 Pairs of Scripts and Shooting Scripts for Short Drama](https://arxiv.org/pdf/2408.09333)
  - [Storyboard20K:Learning Long-form Video Prior via Generative Pre-Training(**GitHub**)](https://github.com/showlab/Long-form-Video-Prior?utm_source=chatgpt.com)
  - [MovieNet-TeViS:Translating Text Synopses to Video Storyboards](https://arxiv.org/pdf/2301.00135)
  - [MovieBench: A Hierarchical Movie Level Dataset for Long Video Generation](https://cvpr.thecvf.com/virtual/2025/poster/33894), [MovieBench(**GitHub**)](https://github.com/showlab/MovieBench)
  - [CogVideo: Large-scale Pretraining for Text-to-Video Generation via Transformers](https://arxiv.org/pdf/2205.15868v1)
- **Output:** 10000 Script - Storyboard - Rendering Triple Data, in JSONL file.
### 2.3 Data Preprocessing - (**Week 3**)
- **Target:** Clean Data and Build Samples cross-modal alignment for training.
- **Method:**
  - Use **NLTK or SpaCy** Clean the Script content, Use **OpenCV** to deal with storyboard.
  - Use **CLIP** to extract the features of contents and images.
    - **Question**: What is **NLTK , SpaCy , OpenCy , CLIP** ?
- **Output:** Feature Matrixes and Labeled files after preprocessing
### 2.4 Represent Core Thesis' Pipeline - (**Week 4 - 5**)
- **Target:** Represent the Protocol of Multi-Agent from **Agno Framework** and the Dynamic Orchestration Strategy from **C-3PO**
- **Method:**
  - Access the Agno GitHub Repository and modify the pipeline code, adjusting the LangChain Tools Schedule
  - Represent the Tree Generated Strategy from C-3PO, combining the Reforesment Learning Strategy from PPO to optimise Multi-Step Reasoning
- **Output:** Run the **Agno + C-3PO Framework** , and Get through the unit test
### 2.5 Choose Model and Build Training Module - (**Week 6 - 7**)
- **Target:** Train Lightweight Cross-Modal Alignment-Driven Model, and combine it with the Agno + C-3PO Framework
- **Method:**
  - Use **Llama-3-8B-Instruct-FP8** as the Script Understanding Model, and **Stable Diffusion 2.1** as the Storyboard Generation Model
  - Calculate the Similarity between Script-Storyboard, and Optimise the Alignment Loss Fuction
- **Output:** Trained Cross-Model Alignment Model, combining to Agno + C-3PO Framework
### 2.6 Design Experiment - (**Week 8**)
- **Target:** Test the Efficiency of the Dynamic Orchestration Strategy and the Accuracy of the Cross-Modal Alignment
- **Method:**
  - The Efficiency: Test the total time for the task(TTC) and the Resource Usage(CPU/Memory)
  - The Accuracy: The Similarity(CLIP Score) and The Quality(FID Score) to measure the entire performance of Cross-Modal Alignment
- **Output:** The Experiment Report and Visualization
### 2.7 Limitation Conclusion - (**Week 9**)
- **Target:** Analyse the Limitation and the possible Approach for improvement
- **Method:**
  - Record the Convergence Problem(The Stability of CLIP Method), the Cold Run for Dynamic Strategy
  - Claim the Possible Approach for improvement(introducing more Multimodal Data, optimising the Rewards Function)
- **Output:** The Current Limitation and The Future Innovation
## Reference
[GO TO >> ]({{< ref "" >}})