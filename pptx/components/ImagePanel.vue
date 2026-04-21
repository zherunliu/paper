<script setup lang="ts">
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
</script>

<template>
  <div>
    <div class="overflow-hidden bg-white" :style="{ height }">
      <img
        v-if="props.src"
        :src="props.src"
        class="h-full w-full object-contain"
      />
    </div>
    <div v-if="caption" class="mt-3 text-sm leading-6 text-slate-500">
      {{ caption }}
    </div>
  </div>
</template>
