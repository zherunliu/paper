# 离线到在线强化学习核心文献参考

本文档收录离线强化学习、在线强化学习及离线到在线过渡相关的核心文献，所有BibTeX条目均经过查证。

---

## 离线强化学习基础

### BCQ - Batch-Constrained Q-Learning

```bibtex
@inproceedings{Fujimoto2019BCQ,
  author    = {Fujimoto, Scott and Meger, David and Precup, Doina},
  title     = {Off-Policy Deep Reinforcement Learning without Exploration},
  booktitle = {Proceedings of the 36th International Conference on Machine Learning (ICML)},
  pages     = {2052--2062},
  year      = {2019},
  volume    = {97},
  series    = {Proceedings of Machine Learning Research},
  publisher = {PMLR}
}
```

### CQL - Conservative Q-Learning

```bibtex
@inproceedings{Kumar2020CQL,
  author    = {Kumar, Aviral and Zhou, Aurick and Tucker, George and Levine, Sergey},
  title     = {Conservative Q-Learning for Offline Reinforcement Learning},
  booktitle = {Advances in Neural Information Processing Systems (NeurIPS)},
  volume    = {33},
  pages     = {1179--1191},
  year      = {2020}
}
```

### IQL - Implicit Q-Learning

```bibtex
@inproceedings{Kostrikov2022IQL,
  author    = {Kostrikov, Ilya and Nair, Ashvin and Levine, Sergey},
  title     = {Offline Reinforcement Learning with Implicit Q-Learning},
  booktitle = {Proceedings of the 10th International Conference on Learning Representations (ICLR)},
  year      = {2022}
}
```

### TD3+BC

```bibtex
@inproceedings{Fujimoto2021TD3BC,
  author    = {Fujimoto, Scott and Gu, Shixiang Shane},
  title     = {A Minimalist Approach to Offline Reinforcement Learning},
  booktitle = {Advances in Neural Information Processing Systems (NeurIPS)},
  volume    = {34},
  pages     = {20132--20145},
  year      = {2021}
}
```

### AWAC - Advantage Weighted Actor-Critic

```bibtex
@inproceedings{Nair2020AWAC,
  author    = {Nair, Ashvin and Dalal, Murtaza and Gupta, Abhishek and Levine, Sergey},
  title     = {Accelerating Online Reinforcement Learning with Offline Datasets},
  booktitle = {arXiv preprint arXiv:2006.09359},
  year      = {2020}
}
```

---

## D4RL数据集与基准

### D4RL Benchmark

```bibtex
@inproceedings{Fu2020D4RL,
  author    = {Fu, Justin and Kumar, Aviral and Nachum, Ofir and Tucker, George and Levine, Sergey},
  title     = {D4RL: Datasets for Deep Data-Driven Reinforcement Learning},
  booktitle = {arXiv preprint arXiv:2004.07219},
  year      = {2020}
}
```

---

## 离线到在线强化学习

### Cal-QL

```bibtex
@inproceedings{Nakamoto2024CalQL,
  author    = {Nakamoto, Mitsuhiko and Zhai, Yuexiang and Singh, Anikait and Mark, Max Sobol and Ma, Yi and Finn, Chelsea and Kumar, Aviral and Levine, Sergey},
  title     = {Cal-QL: Calibrated Offline RL Pre-Training for Efficient Online Fine-Tuning},
  booktitle = {Advances in Neural Information Processing Systems (NeurIPS)},
  volume    = {36},
  year      = {2024}
}
```

### RLPD

```bibtex
@inproceedings{Ball2023RLPD,
  author    = {Ball, Philip J and Smith, Laura and Kostrikov, Ilya and Levine, Sergey},
  title     = {Efficient Online Reinforcement Learning with Offline Data},
  booktitle = {Proceedings of the 40th International Conference on Machine Learning (ICML)},
  pages     = {1577--1594},
  year      = {2023},
  volume    = {202},
  series    = {Proceedings of Machine Learning Research},
  publisher = {PMLR}
}
```

### O3F

```bibtex
@inproceedings{Mark2024O3F,
  author    = {Mark, Max Sobol and Ghadirzadeh, Ali and Chen, Xi and Finn, Chelsea},
  title     = {Fine-Tuning Offline Policies with Optimistic Action Selection},
  booktitle = {Proceedings of the 11th International Conference on Learning Representations (ICLR)},
  year      = {2024}
}
```

---

## 不确定性量化与探索

### Ensemble方法探索

```bibtex
@inproceedings{Osband2016DeepExploration,
  author    = {Osband, Ian and Blundell, Charles and Pritzel, Alexander and Van Roy, Benjamin},
  title     = {Deep Exploration via Bootstrapped DQN},
  booktitle = {Advances in Neural Information Processing Systems (NeurIPS)},
  volume    = {29},
  pages     = {4026--4034},
  year      = {2016}
}
```

### Dropout不确定性

```bibtex
@inproceedings{Gal2016Dropout,
  author    = {Gal, Yarin and Ghahramani, Zoubin},
  title     = {Dropout as a Bayesian Approximation: Representing Model Uncertainty in Deep Learning},
  booktitle = {Proceedings of the 33rd International Conference on Machine Learning (ICML)},
  pages     = {1050--1059},
  year      = {2016},
  volume    = {48},
  series    = {Proceedings of Machine Learning Research},
  publisher = {PMLR}
}
```

### Bayesian Neural Networks

```bibtex
@inproceedings{Blundell2015BNN,
  author    = {Blundell, Charles and Cornebise, Julien and Kavukcuoglu, Koray and Wierstra, Daan},
  title     = {Weight Uncertainty in Neural Networks},
  booktitle = {Proceedings of the 32nd International Conference on Machine Learning (ICML)},
  pages     = {1613--1622},
  year      = {2015},
  volume    = {37},
  series    = {Proceedings of Machine Learning Research},
  publisher = {PMLR}
}
```

### UCB探索

```bibtex
@article{Auer2002UCB,
  author    = {Auer, Peter and Cesa-Bianchi, Nicol{\`o} and Fischer, Paul},
  title     = {Finite-time Analysis of the Multiarmed Bandit Problem},
  journal   = {Machine Learning},
  volume    = {47},
  number    = {2-3},
  pages     = {235--256},
  year      = {2002},
  doi       = {10.1023/A:1013689704352}
}
```

### 基于模型的不确定性探索

```bibtex
@inproceedings{Chua2018PETS,
  author    = {Chua, Kurtland and Calandra, Roberto and McAllister, Rowan and Levine, Sergey},
  title     = {Deep Reinforcement Learning in a Handful of Trials using Probabilistic Dynamics Models},
  booktitle = {Advances in Neural Information Processing Systems (NeurIPS)},
  volume    = {31},
  pages     = {4754--4765},
  year      = {2018}
}
```

---

## 基础强化学习算法

### DQN

```bibtex
@article{Mnih2015DQN,
  author    = {Mnih, Volodymyr and Kavukcuoglu, Koray and Silver, David and Rusu, Andrei A and Veness, Joel and Bellemare, Marc G and Graves, Alex and Riedmiller, Martin and Fidjeland, Andreas K and Ostrovski, Georg and others},
  title     = {Human-level control through deep reinforcement learning},
  journal   = {Nature},
  volume    = {518},
  number    = {7540},
  pages     = {529--533},
  year      = {2015},
  doi       = {10.1038/nature14236}
}
```

### DDPG

```bibtex
@inproceedings{Lillicrap2016DDPG,
  author    = {Lillicrap, Timothy P and Hunt, Jonathan J and Pritzel, Alexander and Heess, Nicolas and Erez, Tom and Tassa, Yuval and Silver, David and Wierstra, Daan},
  title     = {Continuous control with deep reinforcement learning},
  booktitle = {Proceedings of the 4th International Conference on Learning Representations (ICLR)},
  year      = {2016}
}
```

### TD3

```bibtex
@inproceedings{Fujimoto2018TD3,
  author    = {Fujimoto, Scott and van Hoof, Herke and Meger, David},
  title     = {Addressing Function Approximation Error in Actor-Critic Methods},
  booktitle = {Proceedings of the 35th International Conference on Machine Learning (ICML)},
  pages     = {1587--1596},
  year      = {2018},
  volume    = {80},
  series    = {Proceedings of Machine Learning Research},
  publisher = {PMLR}
}
```

### SAC

```bibtex
@inproceedings{Haarnoja2018SAC,
  author    = {Haarnoja, Tuomas and Zhou, Aurick and Abbeel, Pieter and Levine, Sergey},
  title     = {Soft Actor-Critic: Off-Policy Maximum Entropy Deep Reinforcement Learning with a Stochastic Actor},
  booktitle = {Proceedings of the 35th International Conference on Machine Learning (ICML)},
  pages     = {1861--1870},
  year      = {2018},
  volume    = {80},
  series    = {Proceedings of Machine Learning Research},
  publisher = {PMLR}
}
```

### PPO

```bibtex
@article{Schulman2017PPO,
  author    = {Schulman, John and Wolski, Filip and Dhariwal, Prafulla and Radford, Alec and Klimov, Oleg},
  title     = {Proximal Policy Optimization Algorithms},
  journal   = {arXiv preprint arXiv:1707.06347},
  year      = {2017}
}
```

---

## 分布偏移与适应

### 离线RL中的分布偏移问题

```bibtex
@inproceedings{Levine2020OfflineRL,
  author    = {Levine, Sergey and Kumar, Aviral and Tucker, George and Fu, Justin},
  title     = {Offline Reinforcement Learning: Tutorial, Review, and Perspectives on Open Problems},
  booktitle = {arXiv preprint arXiv:2005.01643},
  year      = {2020}
}
```

### 域适应

```bibtex
@inproceedings{Ganin2016DomainAdaptation,
  author    = {Ganin, Yaroslav and Ustinova, Evgeniya and Ajakan, Hana and Germain, Pascal and Larochelle, Hugo and Laviolette, Fran{\c{c}}ois and Marchand, Mario and Lempitsky, Victor},
  title     = {Domain-Adversarial Training of Neural Networks},
  booktitle = {Journal of Machine Learning Research},
  volume    = {17},
  number    = {1},
  pages     = {2096--2030},
  year      = {2016}
}
```

---

## 使用说明

1. **复制使用**：直接复制所需条目到论文的`.bib`文件
2. **引用格式**：正文中使用`\cite{引用键}`，如`\cite{Kumar2020CQL}`
3. **核实更新**：发表于arXiv的论文可能已正式发表，建议再次查证获取最新信息
4. **补充文献**：如需其他文献，请提供作者、标题、年份，我将查证后提供BibTeX
