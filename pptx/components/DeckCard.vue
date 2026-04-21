<script setup lang="ts">
interface IProps {
  eyebrow?: string;
  title?: string;
  compact?: boolean;
}

withDefaults(defineProps<IProps>(), {
  eyebrow: "",
  title: "",
  compact: false,
});
</script>

<template>
  <div
    :class="
      compact ? 'border border-slate-200 p-3' : 'border border-slate-200 p-4'
    "
  >
    <div v-if="eyebrow" class="text-xs text-slate-400">{{ eyebrow }}</div>
    <div v-if="title" class="mt-1 text-xl leading-7 text-slate-900">
      {{ title }}
    </div>
    <div class="mt-2 text-sm leading-6 text-slate-600">
      <slot />
    </div>
  </div>
</template>
