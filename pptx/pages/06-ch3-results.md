---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点一：实验结果与分析

::left::

<div class="space-y-5">
  <DeckCard eyebrow="主结果" title="AOPO 在多数任务上优于或匹配强基线">
    <ul class="list-disc pl-5">
      <li>在 9 个任务中，AOPO 在 6 个任务上达到最优或次优。</li>
      <li>在 halfcheetah-random/medium 与 walker2d-random/medium 上收益更显著。</li>
      <li>在部分任务上与 MOPO 接近或略低（如 hopper-medium），但整体更稳健。</li>
    </ul>
  </DeckCard>

  <DeckCard eyebrow="稳健性" title="降低分布外滚动导致的退化与波动">
    累积不确定性使惩罚对“风险传播”更敏感，动态权重使保守程度对训练阶段自适应，从而整体提升稳定性。
  </DeckCard>

  <div class="grid grid-cols-3 gap-4">
    <MetricCard value="6/9" label="优于所有基线" />
    <MetricCard value="stable" label="优化更稳健" />
    <MetricCard value="risk-aware" label="风险更可控" />
  </div>
</div>

::right::

<ImagePanel src="/thesis/boxplot.png" height="430px" caption="不同推演步数状态的不确定性分布箱线图，横轴为智能体在环境模型中的推演步数，纵轴为累积不确定性。t = 0 为离线数据集中的真实状态，t ≥ 1 为模型生成的状态。箱体表示四分位距，中线表示中位数。" />
