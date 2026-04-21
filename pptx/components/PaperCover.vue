<script setup lang="ts">
interface IProps {
  title: string;
  subtitle: string;
  author: string;
  advisor: string;
  major: string;
  direction: string;
  date: string;
}

withDefaults(defineProps<IProps>(), {
  title: "",
  subtitle: "",
  author: "",
  advisor: "",
  major: "",
  direction: "",
  date: "",
});
</script>

<template>
  <div class="h-full bg-white px-10 py-8">
    <div class="flex h-full flex-col justify-between">
      <div class="flex items-center justify-between text-sm text-slate-500">
        <div>研究生课题组汇报</div>
        <div>Offline RL / Model-based / Uncertainty</div>
      </div>

      <div class="grid grid-cols-[1.25fr_0.75fr] gap-10">
        <div>
          <div class="mb-6 h-1 w-24 bg-slate-900"></div>
          <h1
            class="max-w-[760px] text-5xl leading-tight text-slate-900"
            v-html="title"
          ></h1>
          <p class="mt-8 max-w-[760px] text-lg leading-8 text-slate-600">
            {{ subtitle }}
          </p>
        </div>

        <!-- <div class="border border-slate-200 p-6">
          <div class="text-sm tracking-[0.2em] text-slate-400">汇报信息</div>
          <div class="mt-5 space-y-4 text-[15px] leading-7 text-slate-700">
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>作者</span>
              <span>{{ author }}</span>
            </div>
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>导师</span>
              <span>{{ advisor }}</span>
            </div>
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>专业</span>
              <span>{{ major }}</span>
            </div>
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>方向</span>
              <span>{{ direction }}</span>
            </div>
            <div class="flex justify-between gap-6">
              <span>时间</span>
              <span>{{ date }}</span>
            </div>
          </div>
        </div> -->
      </div>

      <div
        class="flex items-center justify-between border-t border-slate-200 pt-4 text-sm text-slate-500"
      >
        <div>南京邮电大学</div>
        <div>从保守优化到定向探索</div>
      </div>
    </div>
  </div>
</template>
