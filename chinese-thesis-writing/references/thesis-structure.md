# 论文结构规范参考

## 硕士学位论文标准结构

### 前置部分

- 封面
- 独创性声明
- 摘要（中英文）
- 目录
- 符号说明（可选）

### 正文部分

#### 第1章 绪论

- 1.1 研究背景
- 1.2 研究意义
- 1.3 国内外研究现状
- 1.4 研究目标与内容
- 1.5 论文创新点
- 1.6 论文组织结构

#### 第2章 相关工作与理论基础

- 2.1 核心理论基础
  - 基本概念与定义
  - 数学模型与形式化描述
- 2.2 相关工作综述
  - 按技术路线分类梳理
  - 现有方法对比分析
- 2.3 本章小结

#### 第3章 [核心方法]

- 3.1 问题定义与形式化
- 3.2 整体框架设计
- 3.3 核心模块详述
  - 模块一
  - 模块二
  - ...
- 3.4 算法流程与复杂度分析
- 3.5 本章小结

#### 第4章 实验与分析

- 4.1 实验设置
  - 数据集/环境描述
  - 基线方法
  - 评价指标
  - 实现细节
- 4.2 主实验结果
- 4.3 消融实验
- 4.4 可视化分析（可选）
- 4.5 讨论
- 4.6 本章小结

#### 第5章 总结与展望

- 5.1 研究总结
- 5.2 研究局限性
- 5.3 未来研究方向

### 后置部分

- 参考文献
- 致谢
- 附录（可选）

---

## 各章节字数参考

| 章节           | 建议字数          | 说明             |
| -------------- | ----------------- | ---------------- |
| 摘要           | 800-1000字        | 中英文各一份     |
| 第1章 绪论     | 3000-5000字       | 奠定研究基调     |
| 第2章 相关工作 | 5000-8000字       | 体现文献积累     |
| 第3章 核心方法 | 8000-12000字      | 论文核心，需详尽 |
| 第4章 实验分析 | 5000-8000字       | 充分验证方法     |
| 第5章 总结展望 | 2000-3000字       | 简洁有力         |
| **全文**       | **30000-50000字** | 不含参考文献     |

---

## 参考文献要求

### 数量要求

- 总数：≥50篇
- 英文文献占比：≥60%
- 近5年文献占比：≥40%
- 顶会/顶刊占比：建议≥30%

### 强化学习领域核心venue

**顶级会议：**

- NeurIPS (Neural Information Processing Systems)
- ICML (International Conference on Machine Learning)
- ICLR (International Conference on Learning Representations)
- AAAI (AAAI Conference on Artificial Intelligence)
- IJCAI (International Joint Conference on Artificial Intelligence)

**顶级期刊：**

- JMLR (Journal of Machine Learning Research)
- TPAMI (IEEE Transactions on Pattern Analysis and Machine Intelligence)
- AIJ (Artificial Intelligence Journal)
- TMLR (Transactions on Machine Learning Research)

**机器人与控制相关：**

- ICRA (IEEE International Conference on Robotics and Automation)
- CoRL (Conference on Robot Learning)
- RSS (Robotics: Science and Systems)

---

## 图表规范

### 图片要求

- 分辨率：≥300dpi
- 格式：矢量图优先（PDF/EPS），位图次之（PNG）
- 字体：图内文字需清晰可读
- 编号：图1-1、图1-2（章节号-序号）或 图1、图2（全文连续）

### 表格要求

- 采用三线表格式
- 表头简洁明确
- 数值对齐方式统一
- 编号与图片规则一致

### 图表引用

- 正文中必须引用每个图表
- 引用格式：如图X所示、见表X
- 图表应紧跟首次引用位置

---

## 公式规范

### 编号规则

- 独立成行的公式需编号
- 编号格式：(1-1)或(1)
- 仅关键公式编号，推导过程中的中间步骤可不编号

### 符号规范

- 变量：斜体（$x$, $\theta$）
- 向量：粗斜体（$\mathbf{x}$）或加箭头（$\vec{x}$）
- 矩阵：粗体大写（$\mathbf{A}$）
- 集合：花体大写（$\mathcal{S}$）
- 函数/算子：正体（$\max$, $\mathbb{E}$）

### 首次出现原则

所有符号在首次出现时需定义，格式：

```
其中，$s$表示状态，$a$表示动作，$r$表示即时奖励。
```
