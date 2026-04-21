# 从 chapter3 到 chapter4 的研究主线

<div class="grid grid-cols-3 gap-6 pt-8">
  <DeckCard eyebrow="阶段一" title="先解决纯离线优化的可靠性">
    核心矛盾是模型推演误差会沿轨迹累积，因此需要更细粒度的不确定性度量与动态惩罚机制。
  </DeckCard>

  <DeckCard eyebrow="阶段二" title="再突破数据边界带来的性能上限">
    即使纯离线方法更稳健，策略性能仍然受限于数据覆盖范围，因此需要有限在线交互来补充关键样本。
  </DeckCard>

  <DeckCard eyebrow="关键变化" title="不确定性角色发生转换">
    chapter3 中不确定性是惩罚信号；chapter4 中不确定性进一步成为探索引导信号。
  </DeckCard>
</div>

<div class="mt-10 flex items-center gap-4 text-sm text-slate-500">
  <div class="h-px flex-1 bg-slate-200"></div>
  <div>保守优化</div>
  <div class="h-px w-12 bg-slate-900"></div>
  <div>定向探索</div>
  <div class="h-px flex-1 bg-slate-200"></div>
</div>
