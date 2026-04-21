---
layout: two-cols-header
layoutClass: gap-10
---

# 研究问题与主要贡献

::left::

<div class="space-y-5">
  <DeckCard eyebrow="核心挑战" title="离线数据覆盖有限导致分布偏移">
    当策略访问离线数据未覆盖的状态-动作对时，价值函数估计易产生外推误差，进而带来性能退化与训练不稳定。
  </DeckCard>

  <DeckCard eyebrow="研究点一（chapter3）" title="自适应不确定性度量的保守优化（AOPO）">
    <ul class="list-disc pl-5">
      <li>累积状态不确定性：刻画风险沿轨迹传播与累积。</li>
      <li>奖励重塑：同时惩罚单步转移不确定性与累积风险。</li>
      <li>自适应权重：用 Sigmoid 平滑调节惩罚强度，实现探索与保守的动态平衡。</li>
    </ul>
  </DeckCard>

  <DeckCard eyebrow="研究点二（chapter4）" title="定向探索的离线到在线迁移（DEM）">
    <ul class="list-disc pl-5">
      <li>不确定性角色转换：从惩罚信号转为探索引导信号。</li>
      <li>双重不确定性：区分偶然/认知不确定性以提升在线采样效率。</li>
      <li>有限交互微调：将在线预算聚焦于高不确定性且高价值区域。</li>
    </ul>
  </DeckCard>

  <div class="grid grid-cols-3 gap-4">
    <MetricCard value="D4RL" label="MuJoCo 基准评测" />
    <MetricCard value="AOPO" label="纯离线稳健优化" />
    <MetricCard value="50k" label="在线交互预算" />
  </div>
</div>

::right::

<DeckCard eyebrow="技术路线" title="从稳健优化到定向探索">
  <div class="space-y-2 text-sm leading-6 text-slate-700">
    <div class="border border-slate-200 p-3">阶段 A：纯离线稳健优化（AOPO）</div>
    <div class="border border-slate-200 p-3">阶段 B：离线预训练 + 在线定向探索微调（DEM）</div>
    <div class="border border-slate-200 p-3">统一线索：不确定性从“风险约束”拓展到“探索引导”</div>
  </div>
  <div class="mt-4 border-t border-slate-200 pt-3 text-sm leading-6 text-slate-600">
    两项工作共享基于模型的强化学习框架，但在不确定性的使用方式上形成互补：chapter3 更强调稳健性，chapter4 更强调样本效率。
  </div>
</DeckCard>
