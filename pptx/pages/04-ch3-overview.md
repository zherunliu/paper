---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点一：问题定义与核心思想

::left::

<div class="space-y-5">
  <DeckCard eyebrow="chapter3 关注的问题" title="单步不确定性不够，误差会沿轨迹累积">
    现有方法大多只惩罚状态转移不确定性，但在模型 rollout 中，即使每一步方差都不高，累计误差仍可能把状态推向离线数据覆盖之外。
  </DeckCard>

  <DeckCard eyebrow="两个关键改进" title="累积度量 + 动态权重">
    <ul class="list-disc pl-5">
      <li>引入累积状态不确定性，刻画历史风险的传播效应。</li>
      <li>引入自适应动态权重，在训练前期更鼓励探索，后期更强调保守。</li>
    </ul>
  </DeckCard>

  <DeckCard eyebrow="一句话概括" title="不仅看当前风险，也看风险是如何累积而来">
    不只是看这一步是否危险，而是看当前状态是不是由危险轨迹累积而来。
  </DeckCard>
</div>

::right::

<ImagePanel src="/thesis/framework.png" height="430px" caption="框架图展示了离线数据建模、虚拟轨迹生成、不确定性评估与 SAC 策略优化的完整闭环。" />
