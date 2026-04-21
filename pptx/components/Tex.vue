<script setup lang="ts">
import { computed } from "vue";
import katex from "katex";

interface IProps {
  formula: string;
  display?: boolean;
  throwOnError?: boolean;
}

const props = withDefaults(defineProps<IProps>(), {
  formula: "",
  display: true,
  throwOnError: false,
});

const html = computed(() => {
  if (!props.formula) return "";
  return katex.renderToString(props.formula, {
    displayMode: props.display,
    throwOnError: props.throwOnError,
  });
});
</script>

<template>
  <span v-html="html" />
</template>
