# 汇报总结

<div class="grid grid-cols-2 gap-8 pt-8">
  <DeckCard eyebrow="研究点一" title="解决纯离线设定下的稳健优化问题">
    通过累积状态不确定性与动态权重机制，提升模型 rollout 过程中的风险感知能力和保守优化能力。
  </DeckCard>

  <DeckCard eyebrow="研究点二" title="解决离线数据边界带来的性能上限问题">
    通过定向探索模型，把不确定性转化为探索引导信号，在有限在线预算下高效扩展模型有效覆盖范围。
  </DeckCard>
</div>

<div class="mt-10 border border-slate-200 p-6 text-center text-xl leading-9 text-slate-800">
  本工作的核心价值在于：
  让不确定性既能约束风险，也能驱动探索，
  从而把纯离线学习自然地延伸到离线到在线联合优化。
</div>
