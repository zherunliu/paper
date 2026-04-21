---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点一：实验结果与分析

::left::

<div class="space-y-5">
  <DeckCard eyebrow="整体表现" title="AOPO 在多数任务上优于或匹配强基线">
    <ul class="list-disc pl-5">
      <li>在 9 个任务中，AOPO 在 6 个任务上达到最优或次优。</li>
      <li>在 halfcheetah-random/medium 与 walker2d-random/medium 上收益更显著。</li>
      <li>在部分任务上与 MOPO 接近或略低（如 hopper-medium），但整体更稳健。</li>
    </ul>
  </DeckCard>

  <DeckCard eyebrow="稳定性" title="减少 rollout 带来的方差与退化">
    引入累积不确定性后，模型不确定性惩罚更“时序一致”，可降低离线分布外滚动导致的训练波动。
  </DeckCard>

  <div class="grid grid-cols-3 gap-4">
    <MetricCard value="6/9" label="优于所有基线" />
    <MetricCard value="stable" label="优化更稳健" />
    <MetricCard value="risk-aware" label="风险更可控" />
  </div>
</div>

::right::

<ImagePanel src="/thesis/boxplot.png" height="430px" caption="AOPO 相对基线的归一化得分分布（越高越好）。整体上中位数更高、离群点更少，反映稳定性提升。" />
