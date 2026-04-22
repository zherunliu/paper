---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点一：方法框架与核心思想

::left::

<div class="space-y-5">
  <DeckCard eyebrow="关注的问题" title="模型 rollout 误差会沿轨迹累积">
    现有方法多以单步不确定性惩罚为主，但在多步推演过程中，即使每一步方差都不高，累计误差仍可能把状态推向离线数据覆盖之外。
  </DeckCard>

  <DeckCard eyebrow="核心思想" title="用“累积不确定性”刻画历史风险传播">
    不仅度量当前一步的风险水平，也判断当前状态是否由高风险轨迹累积而成，从而对分布外滚动进行更一致的约束。
  </DeckCard>

  <DeckCard eyebrow="关键机制" title="累积度量 + 动态权重">
    <ul class="list-disc pl-5">
      <li>累积状态不确定性：刻画风险沿轨迹传播与堆积。</li>
      <li>动态权重：随训练阶段平滑调节惩罚强度，避免欠优化或过度保守。</li>
    </ul>
  </DeckCard>
</div>

::right::

<ImagePanel src="/thesis/framework.png" height="430px" caption="离线数据建模、虚拟轨迹生成、不确定性评估与 SAC 策略优化的闭环。" />
