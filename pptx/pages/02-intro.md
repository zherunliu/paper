---
layout: two-cols-header
layoutClass: gap-10
---

# 问题、动机与研究主线

::left::

<div class="space-y-5">
  <DeckCard eyebrow="为什么研究离线强化学习" title="训练过程不依赖在线试错">
    可以直接利用历史数据学习策略，适用于医疗诊断、自动驾驶、机器人控制等高成本、高风险场景。
  </DeckCard>

  <DeckCard eyebrow="核心瓶颈" title="数据覆盖有限，策略却需要泛化">
    当策略访问训练数据未覆盖的状态动作对时，价值函数容易产生外推误差，导致策略性能显著退化。
  </DeckCard>

  <DeckCard eyebrow="论文切入点" title="用不确定性刻画应规避区域与可探索区域">
    先在纯离线阶段将不确定性用于保守约束，再在在线微调阶段将不确定性转化为探索引导信号。
  </DeckCard>
</div>

::right::

<div class="space-y-5">
  <DeckCard eyebrow="两项递进式工作" title="从稳健优化到定向探索">
    <ul class="list-disc pl-5">
      <li>研究点一：解决纯离线设定下的稳健优化与训练稳定性问题。</li>
      <li>研究点二：解决离线数据边界带来的性能上限，在有限在线预算下高效扩展覆盖范围。</li>
    </ul>
    <div class="mt-3 text-sm text-slate-600">
      统一线索：不确定性从“风险约束”拓展为“探索引导”。
    </div>
  </DeckCard>

  <DeckCard eyebrow="主要贡献概览" title="两研究点的关键机制">
    <ul class="list-disc pl-5">
      <li>
        AOPO：累积状态不确定性 + 奖励重塑 + 动态权重，实现更稳健的保守优化。
      </li>
      <li>
        DEM：双重不确定性 + 定向探索目标 + 权重衰减，实现更高的在线样本效率。
      </li>
    </ul>
  </DeckCard>

</div>
