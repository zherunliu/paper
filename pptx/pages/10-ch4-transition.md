# 研究点二：为什么还需要 chapter4

<div class="grid grid-cols-2 gap-8 pt-8">
  <DeckCard eyebrow="chapter3 的边界" title="稳健性提升，但优化仍受数据覆盖边界约束">
    如果离线数据质量不高或覆盖不足，即便采用更保守的优化策略，改进空间仍主要局限于有限区域，难以主动发掘边界之外的高价值区域。
  </DeckCard>

  <DeckCard eyebrow="chapter4 的核心转变" title="把不确定性从惩罚信号变成探索信号">
    在线阶段不再单纯回避高不确定性区域，而是有选择地采集高不确定性且高价值的样本，以尽量少的交互完成微调。
  </DeckCard>
</div>

<div class="mt-10 border-t border-slate-200 pt-5 text-center text-lg text-slate-700">
  研究主线从如何在边界内更稳健地学习，推进到如何突破边界继续学习。
</div>
