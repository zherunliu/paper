# 强化学习领域核心术语中英对照

## 基础概念

| 英文术语                           | 中文译法           | 符号          |
| ---------------------------------- | ------------------ | ------------- | ----- |
| Reinforcement Learning (RL)        | 强化学习           | -             |
| Markov Decision Process (MDP)      | 马尔可夫决策过程   | $\mathcal{M}$ |
| State                              | 状态               | $s$           |
| Action                             | 动作               | $a$           |
| Reward                             | 奖励/回报          | $r$           |
| Policy                             | 策略               | $\pi$         |
| Value Function                     | 价值函数           | $V(s)$        |
| Action-Value Function / Q-Function | 动作价值函数/Q函数 | $Q(s,a)$      |
| Discount Factor                    | 折扣因子           | $\gamma$      |
| Trajectory                         | 轨迹               | $\tau$        |
| Episode                            | 回合/情节          | -             |
| Return                             | 累计回报           | $G_t$         |
| Transition                         | 状态转移           | $P(s'         | s,a)$ |

## 算法类别

| 英文术语              | 中文译法                  |
| --------------------- | ------------------------- |
| Model-Free RL         | 无模型强化学习            |
| Model-Based RL        | 基于模型的强化学习        |
| On-Policy             | 同策略                    |
| Off-Policy            | 异策略                    |
| Online RL             | 在线强化学习              |
| Offline RL / Batch RL | 离线强化学习/批量强化学习 |
| Offline-to-Online RL  | 离线到在线强化学习        |
| Imitation Learning    | 模仿学习                  |
| Inverse RL            | 逆强化学习                |

## 核心算法名称

| 算法缩写 | 全称                               | 中文说明                 |
| -------- | ---------------------------------- | ------------------------ |
| DQN      | Deep Q-Network                     | 深度Q网络                |
| DDPG     | Deep Deterministic Policy Gradient | 深度确定性策略梯度       |
| TD3      | Twin Delayed DDPG                  | 双延迟深度确定性策略梯度 |
| SAC      | Soft Actor-Critic                  | 软演员-评论家算法        |
| PPO      | Proximal Policy Optimization       | 近端策略优化             |
| TRPO     | Trust Region Policy Optimization   | 信任域策略优化           |
| A2C/A3C  | Advantage Actor-Critic             | 优势演员-评论家算法      |
| BCQ      | Batch-Constrained Q-Learning       | 批量约束Q学习            |
| CQL      | Conservative Q-Learning            | 保守Q学习                |
| IQL      | Implicit Q-Learning                | 隐式Q学习                |
| AWAC     | Advantage Weighted Actor-Critic    | 优势加权演员-评论家      |
| TD3+BC   | TD3 with Behavior Cloning          | 带行为克隆的TD3          |

## 探索与不确定性

| 英文术语                           | 中文译法            |
| ---------------------------------- | ------------------- |
| Exploration                        | 探索                |
| Exploitation                       | 利用                |
| Exploration-Exploitation Trade-off | 探索-利用权衡       |
| Uncertainty Quantification         | 不确定性量化        |
| Epistemic Uncertainty              | 认知不确定性        |
| Aleatoric Uncertainty              | 偶然不确定性        |
| Bayesian Neural Network            | 贝叶斯神经网络      |
| Ensemble Methods                   | 集成方法            |
| Dropout                            | Dropout（通常不译） |
| Thompson Sampling                  | 汤普森采样          |
| UCB (Upper Confidence Bound)       | 置信上界            |
| ε-greedy                           | ε-贪婪策略          |
| Intrinsic Motivation               | 内在动机            |
| Curiosity-Driven Exploration       | 好奇心驱动探索      |

## 离线强化学习专用术语

| 英文术语                  | 中文译法   |
| ------------------------- | ---------- |
| Offline Dataset           | 离线数据集 |
| Behavior Policy           | 行为策略   |
| Distribution Shift        | 分布偏移   |
| Out-of-Distribution (OOD) | 分布外     |
| Extrapolation Error       | 外推误差   |
| Overestimation            | 过估计     |
| Conservative Estimation   | 保守估计   |
| Support Constraint        | 支撑约束   |
| Fine-tuning               | 微调       |
| Pre-training              | 预训练     |

## 实验相关

| 英文术语          | 中文译法 |
| ----------------- | -------- |
| Baseline          | 基线方法 |
| Benchmark         | 基准测试 |
| Ablation Study    | 消融实验 |
| Hyperparameter    | 超参数   |
| Learning Rate     | 学习率   |
| Batch Size        | 批量大小 |
| Sample Efficiency | 样本效率 |
| Convergence       | 收敛     |
| Generalization    | 泛化     |
| Robustness        | 鲁棒性   |

## 实验环境

| 环境名称   | 说明                             |
| ---------- | -------------------------------- |
| MuJoCo     | 物理仿真引擎，常用于连续控制任务 |
| D4RL       | 离线强化学习标准数据集           |
| Atari      | 雅达利游戏，离散动作空间         |
| DMControl  | DeepMind Control Suite           |
| OpenAI Gym | 强化学习标准接口                 |
| Gymnasium  | OpenAI Gym的维护版本             |

---

## 术语使用规范

1. **首次出现**：英文全称（缩写，中文译名）
   - 例：Markov Decision Process (MDP，马尔可夫决策过程)

2. **后续使用**：可直接使用缩写
   - 例：基于MDP框架...

3. **专有名词**：算法名称通常保留英文
   - 例：本文基于CQL算法进行改进

4. **避免混用**：同一术语全文统一译法
