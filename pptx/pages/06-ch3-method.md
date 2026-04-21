---
layout: two-cols-header
layoutClass: gap-5
---

# 研究点一：方法设计

::left::

<div class="space-y-5">
  <DeckCard eyebrow="累积不确定性递推" title="沿轨迹记录历史风险">
    <div class="text-[20px] leading-9 text-slate-900">
      <Tex formula="u(s') = \omega \cdot u(s) + \log(\Sigma_\theta(s, a) + 1)" />
    </div>
    <div class="mt-3">
      用递推形式记录从初始状态到当前状态的历史不确定性累积，计算复杂度为
      <Tex :display="false" formula="O(1)" />。
    </div>
  </DeckCard>

  <DeckCard eyebrow="奖励重塑" title="同时惩罚单步风险与累积风险">
    <div class="text-[20px] leading-9 text-slate-900">
      <Tex formula="\tilde{r} = r - \lambda \cdot (\alpha \cdot u_\phi(s') + \Sigma_\theta(s, a))" />
    </div>
    <div class="mt-3">
      促使策略远离分布外区域，提升离线学习稳定性。
    </div>
  </DeckCard>

  <DeckCard eyebrow="动态权重" title="随训练阶段调整保守程度">
    <div class="text-[20px] leading-9 text-slate-900">
      <Tex formula="\lambda_k = \frac{\lambda_0}{1 + e^{K_0 - k}}" />
    </div>
    <div class="mt-3">
      前期避免过度保守导致欠优化，后期逐步增强稳健约束。
    </div>
  </DeckCard>
</div>

::right::

<DeckCard eyebrow="chapter3 方法链条" title="从模型学习到策略优化">
  <div class="space-y-2 text-sm leading-6 text-slate-700">
    <div class="border border-slate-200 p-3">离线数据训练概率转移模型</div>
    <div class="border border-slate-200 p-3">模型 rollout 生成虚拟轨迹</div>
    <div class="border border-slate-200 p-3">同时计算单步不确定性与累积状态不确定性</div>
    <div class="border border-slate-200 p-3">自适应权重调节惩罚强度</div>
    <div class="border border-slate-200 p-3">在 SAC 框架下更新策略</div>
  </div>
  <div class="mt-4 border-t border-slate-200 pt-3">
    核心在于将静态惩罚扩展为时序感知、过程自适应的保守优化机制。
  </div>
</DeckCard>
