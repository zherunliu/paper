---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点一：理论依据与实验设定

::left::

<div class="space-y-5">
  <DeckCard eyebrow="理论要点" title="累积不确定性的单调性与有界性">
    <div class="text-[18px] leading-8 text-slate-900">
      <Tex formula="u(s_{t+1}) \ge \omega \cdot u(s_t)" />
    </div>
    <div class="mt-2 text-sm text-slate-700">
      单调性解释了“单步方差不大也可能累计漂移”。
    </div>
    <div class="mt-3 text-[18px] leading-8 text-slate-900">
      <Tex formula="u(s_t) \le \frac{u_{max}}{1-\omega}" />
    </div>
    <div class="mt-2 text-sm text-slate-700">
      有界性保证奖励重塑项数值稳定，避免训练发散。
    </div>
  </DeckCard>

  <DeckCard eyebrow="动态权重" title="Sigmoid 调度实现探索→保守的平滑过渡">
    <div class="text-[18px] leading-8 text-slate-900">
      <Tex formula="\lambda_k = \frac{\lambda_0}{1 + e^{K_0 - k}}" />
    </div>
    <div class="mt-2 text-sm text-slate-700">
      训练早期降低惩罚以保留优化自由度，收敛阶段提高惩罚以增强稳健性。
    </div>
  </DeckCard>
</div>

::right::

<div class="space-y-5">
<DeckCard eyebrow="实验设定" title="D4RL MuJoCo + 多数据质量评估">
  <ul class="list-disc pl-5">
    <li>环境：halfcheetah / hopper / walker2d。</li>
    <li>数据：random / medium / medium-expert（v2）。</li>
    <li>
      关键超参：
      <Tex :display="false" formula="t_{max}=5" />，
      <Tex :display="false" formula="\lambda_0=0.5" />，
      <Tex :display="false" formula="\omega=0.5" />，
      <Tex :display="false" formula="\alpha=0.5" />，
      <Tex :display="false" formula="K_0=10000" />。
    </li>
    <li>评估：5 个随机种子，D4RL 归一化得分（0=随机，100=专家）。</li>
    <li>基线：MOPO、BC、CQL、IQL。</li>
  </ul>
</DeckCard>

<DeckCard eyebrow="消融要点" title="两机制相互补充，缺一不可">
  <ul class="list-disc pl-5">
    <li>去掉任一机制都会导致性能与稳定性下降（例如 walker2d-medium：完整 74.5，去权重 53.3，去累积 17.8）。</li>
    <li>在少数任务上与 MOPO 接近或略低（如 hopper-medium），但整体稳健性更强。</li>
  </ul>
</DeckCard>
</div>
