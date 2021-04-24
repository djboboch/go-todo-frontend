<template>
  <div class="w-full border rounded mb-4 pt-2 pb-2 px-4">
    <div>
      {{ postData.header}}
    </div>
    <span class="block h-1 bg-red-800"></span>
    <div>
      {{ postData.content }}
    </div>
  </div>
</template>

<script lang="ts">
import { PropType } from "@vue/runtime-core";

export interface PostData {
  id: string;
  header: string;
  content: string;
}

export default {
  props: {
    postData: {
      type: Object as PropType<PostData>,
      required: true,
    },
  },
};
</script>

<style></style>
