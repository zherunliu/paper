---
layout: two-cols-header
layoutClass: gap-10
---

# 研究点二：方法框架与探索目标

::left::

<div class="space-y-5">
  <DeckCard eyebrow="两阶段框架" title="离线预训练 + 在线定向探索">
    <ul class="list-disc pl-5">
      <li>离线阶段：集成模型 + 保守策略预训练。</li>
      <li>在线阶段：定向探索 + 模型滚动更新 + 策略微调。</li>
    </ul>
  </DeckCard>

  <DeckCard eyebrow="探索策略目标" title="用不确定性补知识，用价值约束方向">
    <div class="text-[20px] leading-8 text-slate-900">
      <Tex
        formula="\nabla_\varphi J_\pi(\varphi)=\mathbb{E}[\nabla_\varphi \log \pi_\varphi(a|s)\cdot(c \cdot u_{on}(s,a)+Q(s,a))]"
      />
    </div>
    <div class="mt-3">
      关键并非随机探索，而是将有限在线预算集中用于信息量更高的样本。
    </div>
  </DeckCard>
</div>

::right::

<div class="space-y-4">
  <ImagePanel src="/thesis/totofig.png" height="400px" />
</div>
