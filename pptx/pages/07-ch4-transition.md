# 研究点切换：从稳健优化到定向探索

<div class="grid grid-cols-3 gap-6 pt-8">
  <DeckCard eyebrow="研究点一" title="稳健性提升，但仍受数据边界约束">
    即便采用更保守的优化策略，策略性能仍主要受限于离线数据覆盖范围，难以主动发掘边界之外的高价值区域。
  </DeckCard>

  <DeckCard eyebrow="研究点二" title="有限交互下突破边界，补齐关键样本">
    引入有限在线预算，通过定向探索采集“信息量更高、且回报相关”的样本，以提升模型与策略的泛化能力。
  </DeckCard>

  <DeckCard eyebrow="关键变化" title="不确定性从惩罚信号变为探索信号">
    离线阶段用不确定性约束风险；在线阶段进一步用不确定性引导采样，使探索更有方向、更高效。
  </DeckCard>
</div>

<div class="mt-10 flex items-center gap-4 text-sm text-slate-500">
  <div class="h-px flex-1 bg-slate-200"></div>
  <div>保守优化</div>
  <div class="h-px w-12 bg-slate-900"></div>
  <div>定向探索</div>
  <div class="h-px flex-1 bg-slate-200"></div>
</div>

<div class="mt-6 border-t border-slate-200 pt-5 text-center text-lg text-slate-700">
  研究主线从“如何在边界内更稳健地学习”，推进到“如何突破边界继续学习”。
</div>
