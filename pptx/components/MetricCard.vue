<script setup lang="ts">
interface IProps {
  value: string;
  label: string;
}

withDefaults(defineProps<IProps>(), {
  value: "",
  label: "",
});
</script>

<template>
  <div class="border border-slate-200 p-4 text-center">
    <div class="text-3xl text-slate-900">{{ value }}</div>
    <div class="mt-1 text-sm leading-6 text-slate-500">{{ label }}</div>
  </div>
</template>
