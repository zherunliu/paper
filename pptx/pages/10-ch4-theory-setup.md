---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点二：理论依据与实验设定

::left::

<div class="space-y-5">
  <DeckCard eyebrow="双重不确定性" title="区分偶然与认知不确定性">
    <div class="text-[18px] leading-8 text-slate-900">
      <Tex formula="u_{on}(s,a)=\max_i\|\Sigma_\phi^i(s,a)\|_F+\sqrt{\mathrm{DisVar}(s,a)}" />
    </div>
    <div class="mt-3">
      离线阶段偏重偶然不确定性以保持稳健；在线阶段叠加认知不确定性以提升探索的信息增益。
    </div>
  </DeckCard>

  <DeckCard eyebrow="收敛速率结论" title="采样集中于边界可提升模型收敛">
    <ul class="list-disc pl-5">
      <li>
        均匀采样：
        <Tex :display="false" formula="\mathrm{MSE}=O(n^{-2/(d+2)})" />
      </li>
      <li>
        定向探索：
        <Tex :display="false" formula="\mathrm{MSE}=O(n^{-2/(d_B+2)})" />
        ，且
        <Tex :display="false" formula="d_B<d" />
      </li>
    </ul>
  </DeckCard>
</div>

::right::

<DeckCard eyebrow="实验设定" title="有限在线预算下的离线到在线微调">
  <ul class="list-disc pl-5">
    <li>
      离线阶段：集成模型
      <Tex :display="false" formula="N=5" />
      + 不确定性惩罚的保守预训练。
    </li>
    <li>
      在线阶段：交互预算
      <Tex :display="false" formula="50k" />
      ，引入定向探索目标并滚动更新模型与策略。
    </li>
    <li>对比方法：AWAC、MOPO、COMBO、MOREL、CQL、TD3+BC。</li>
  </ul>
  <div class="mt-4 border-t border-slate-200 pt-3 text-sm leading-6 text-slate-600">
    该设置强调“预算受限”条件下的样本效率：用少量交互显著扩展有效覆盖范围。
  </div>
</DeckCard>
