<script setup lang="ts">
interface IProps {
  src: string;
  height: string;
  caption: string;
}

withDefaults(defineProps<IProps>(), {
  src: "",
  height: "420px",
  caption: "",
});
</script>

<template>
  <div>
    <div class="border border-slate-200 p-3" :style="{ height }">
      <iframe :src="src" class="h-full w-full" />
    </div>
    <div v-if="caption" class="mt-3 text-sm leading-6 text-slate-500">
      {{ caption }}
    </div>
  </div>
</template>
