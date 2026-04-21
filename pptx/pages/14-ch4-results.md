---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点二：双重不确定性与结果

::left::

<div class="space-y-5">
  <DeckCard eyebrow="双重不确定性估计" title="离线保守优化与在线探索使用不同侧重点">
    <ul class="list-disc pl-5">
      <li>离线阶段主要估计偶然不确定性，用于保守优化。</li>
      <li>在线阶段同时考虑偶然不确定性与认知不确定性，用于引导探索。</li>
    </ul>
  </DeckCard>

  <DeckCard eyebrow="动态权重" title="探索与利用平滑切换">
    <div class="text-[20px] leading-8 text-slate-900">
      <Tex formula="c = c_0 \cdot \frac{1}{1 + e^{(k-k_0)\nu}}" />
    </div>
    <div class="mt-3">
      在线前期更强调探索，后期逐步转向利用，实现从知识补全到性能提升的平滑切换。
    </div>
  </DeckCard>

  <div class="grid grid-cols-3 gap-4">
    <MetricCard value="50k" label="在线交互预算" />
    <MetricCard value="9/9" label="整体优于 MOPO" />
    <MetricCard value="t-SNE" label="验证探索确实有效" />
  </div>
</div>

::right::

<ImagePanel src="/thesis/tsne.png" height="420px" caption="模型预测状态与离线状态数据分布的可视化对比，反映在线阶段逐步向高信息区域扩展。" />
