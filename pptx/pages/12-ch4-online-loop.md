---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点二：在线阶段迭代流程（定向探索）

::left::

<div class="space-y-5">
  <DeckCard eyebrow="交互-更新闭环" title="把预算花在“高信息 + 高价值”区域">
    <ol class="list-decimal pl-5">
      <li>基于离线预训练策略初始化在线策略。</li>
      <li>按探索目标采样交互轨迹并收集新数据。</li>
      <li>将新数据并入重放缓冲区并滚动更新集成模型。</li>
      <li>基于更新后的模型与不确定性估计进行策略微调。</li>
      <li>随训练推进降低探索权重，使策略从探索平滑过渡到利用。</li>
    </ol>
  </DeckCard>

  <DeckCard eyebrow="与纯离线的差异" title="数据分布由“被动接受”变为“主动扩展”">
    在线阶段的关键收益来自：用很少的交互，定向补齐离线数据覆盖不足的区域，从而提升模型与策略的泛化性能。
  </DeckCard>
</div>

::right::

<ImagePanel
  src="/thesis/maze.png"
  height="380px"
  caption="动机示意：优先采集“覆盖之外”且“回报相关”的样本。"
/>
