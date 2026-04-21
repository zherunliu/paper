<script setup lang="ts">
import { computed } from "vue";

interface IProps {
  src?: string;
  height?: string;
  caption?: string;
}

const props = withDefaults(defineProps<IProps>(), {
  src: "",
  height: "420px",
  caption: "",
});

const viewerSrc = computed(() => {
  if (!props.src) return "";

  // Try to make browser PDF viewer fit a single-page PDF into the iframe,
  // reducing internal scrollbars while preserving aspect ratio.
  const params = "page=1&zoom=page-width&toolbar=0&navpanes=0";
  const separator = props.src.includes("#") ? "&" : "#";
  return `${props.src}${separator}${params}`;
});
</script>

<template>
  <div>
    <div class="overflow-hidden bg-white" :style="{ height }">
      <iframe
        :src="viewerSrc"
        class="h-full w-full bg-white"
        scrolling="no"
        style="border: 0"
      />
    </div>
    <div v-if="caption" class="mt-3 text-sm leading-6 text-slate-500">
      {{ caption }}
    </div>
  </div>
</template>
