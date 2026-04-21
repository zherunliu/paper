<script setup lang="ts">
interface IProps {
  eyebrow: string;
  title: string;
  compact: boolean;
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
      compact ? 'border border-slate-200 p-4' : 'border border-slate-200 p-5'
    "
  >
    <div v-if="eyebrow" class="text-sm text-slate-400">{{ eyebrow }}</div>
    <div v-if="title" class="mt-2 text-2xl leading-8 text-slate-900">
      {{ title }}
    </div>
    <div class="mt-3 text-sm leading-7 text-slate-600">
      <slot />
    </div>
  </div>
</template>
