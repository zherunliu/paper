---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点一：理论要点（为什么这样设计）

::left::

<div class="space-y-5">
  <DeckCard eyebrow="性质 1" title="累积不确定性沿轨迹单调增加">
    <div class="text-[20px] leading-9 text-slate-900">
      <Tex formula="u(s_{t+1}) \ge \omega \cdot u(s_t)" />
    </div>
    <div class="mt-3">
      该性质解释了“单步方差不大也可能累计漂移”的现象：随着 rollout 步数增加，风险不会凭空消失。
    </div>
  </DeckCard>

  <DeckCard eyebrow="性质 2" title="当 ω<1 时存在上界，保证数值稳定">
    <div class="text-[20px] leading-9 text-slate-900">
      <Tex formula="u(s_t) \le \frac{u_{max}}{1-\omega}" />
    </div>
    <div class="mt-3">
      上界确保奖励重塑项不会无界增大，从而避免训练过程中出现数值发散。
    </div>
  </DeckCard>

  <DeckCard eyebrow="权重机制" title="Sigmoid 调度实现探索→保守的平滑过渡">
    <div class="text-[20px] leading-9 text-slate-900">
      <Tex formula="\lambda_k = \frac{\lambda_0}{1 + e^{K_0 - k}}" />
    </div>
    <div class="mt-3">
      训练早期降低惩罚以保留优化自由度，收敛阶段提高惩罚以增强稳健性。
    </div>
  </DeckCard>
</div>

::right::

<DeckCard eyebrow="设计对应关系" title="理论性质如何支撑方法组件">
  <div class="space-y-2 text-sm leading-6 text-slate-700">
    <div class="border border-slate-200 p-3">单调性 → 累积风险度量有必要（避免只看当前一步）</div>
    <div class="border border-slate-200 p-3">上界 → 奖励重塑具备数值稳定性保证</div>
    <div class="border border-slate-200 p-3">Sigmoid 调度 → 阶段性需求下的平滑权衡（探索/保守）</div>
  </div>
</DeckCard>
