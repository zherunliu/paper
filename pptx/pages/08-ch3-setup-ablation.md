---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点一：实验设置与消融要点

::left::

<div class="space-y-5">
  <DeckCard eyebrow="实验设置（chapter3）" title="D4RL MuJoCo + 多数据质量评估">
    <ul class="list-disc pl-5">
      <li>环境：halfcheetah / hopper / walker2d。</li>
      <li>数据：random / medium / medium-expert（v2）。</li>
      <li>
        关键超参：
        <Tex :display="false" formula="t_{max}=5" />
        ，
        <Tex :display="false" formula="\lambda_0=0.5" />
        ，
        <Tex :display="false" formula="\omega=0.5" />
        ，
        <Tex :display="false" formula="\alpha=0.5" />
        ，
        <Tex :display="false" formula="K_0=10000" />
        。
      </li>
      <li>评估：5 个随机种子，D4RL 归一化得分（0=随机，100=专家）。</li>
      <li>基线：MOPO、BC、CQL、IQL。</li>
    </ul>
  </DeckCard>

  <div class="grid grid-cols-3 gap-4">
    <MetricCard value="9" label="任务设置" />
    <MetricCard value="5" label="随机种子" />
    <MetricCard value="44.4" label="hopper-medium 提升幅度" />
  </div>
</div>

::right::

<div class="space-y-5">
  <DeckCard eyebrow="消融结论" title="累积度量与动态权重相互补充">
    <ul class="list-disc pl-5">
      <li>完整方法在多数任务上达到最优或接近最优，整体更稳定。</li>
      <li>去掉任一机制都会导致性能与稳定性下降（例如 walker2d-medium：完整 74.5，去掉权重后 53.3，去掉累积不确定性后 17.8）。</li>
      <li>在少数任务上与 MOPO 接近或略低（如 hopper-medium），但整体稳健性更强。</li>
    </ul>
  </DeckCard>

  <DeckCard eyebrow="阅读方式" title="先看主结果，再用消融解释原因">
    主结果回答“是否有效”，消融结果回答“为什么有效/在哪些条件下更有效”。
  </DeckCard>
</div>
