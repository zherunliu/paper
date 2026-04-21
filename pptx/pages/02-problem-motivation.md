---
layout: two-cols-header
layoutClass: gap-10
---

# 问题与动机

::left::

<div class="space-y-5">
  <DeckCard eyebrow="为什么研究离线强化学习" title="训练过程不依赖在线试错">
    可以直接利用历史数据学习策略，适用于医疗诊断、自动驾驶、机器人控制等高成本、高风险场景。
  </DeckCard>

  <DeckCard eyebrow="真正的瓶颈" title="数据覆盖有限，策略却需要泛化">
    当策略访问训练数据未覆盖的状态动作对时，价值函数容易产生外推误差，导致策略性能显著退化。
  </DeckCard>

  <DeckCard eyebrow="论文切入点" title="用不确定性刻画哪里不该去，哪里值得去">
    先在纯离线阶段把不确定性作为保守约束，再在在线微调阶段把不确定性转化为探索信号。
  </DeckCard>
</div>

::right::

<DeckCard eyebrow="本次汇报结构" title="围绕两项递进式工作展开">
  <div class="space-y-1 text-sm leading-6 text-slate-700">
    <div>1. 问题与动机</div>
    <div>2. 研究点一：chapter3</div>
    <div>3. 研究点二：chapter4</div>
    <div>4. 致谢</div>
  </div>
  <div class="mt-4 border-t border-slate-200 pt-3 text-sm leading-6 text-slate-600">
    论文的两项工作不是并列关系，而是递进关系：chapter3 解决如何在离线数据内稳健优化，chapter4 继续解决如何突破离线数据边界。
  </div>
</DeckCard>
