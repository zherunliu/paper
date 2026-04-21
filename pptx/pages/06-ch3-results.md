---
layout: two-cols
layoutClass: gap-10
---

# 研究点一：实验结论

::left::

<div class="space-y-5">
  <DeckCard eyebrow="主要实验现象" title="在 D4RL MuJoCo 上表现更稳健">
    <ul class="list-disc pl-5">
      <li>整体优于 MOPO 等基线方法。</li>
      <li>在数据质量较差的数据集上优势更明显。</li>
      <li>理论分析也证明了累积不确定性的单调性与动态权重机制的合理性。</li>
    </ul>
  </DeckCard>

  <div class="grid grid-cols-3 gap-4">
    <MetricCard value="6/9" label="任务上达到最优或接近最优" />
    <MetricCard value="44.4" label="hopper-medium 提升幅度" />
    <MetricCard value="AOPO" label="相较 MOPO 更稳健" />
  </div>

  <DeckCard eyebrow="chapter3 的结论" title="纯离线策略更稳健，但仍受数据边界限制">
    通过更合理地刻画不确定性，纯离线策略能够更稳健，但性能上限仍然受离线数据覆盖边界限制。
  </DeckCard>
</div>

::right::

<ImagePanel src="/thesis/boxplot.png" height="420px" caption="随着模型推演步数增加，累积不确定性整体上升，验证了误差沿轨迹累积的建模动机。" />
