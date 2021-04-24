<template>
  <div class="col-span-5 border rounded mb-4 pt-2 pb-2 px-4">
    <div></div>
    <div></div>
  </div>
</template>

<script lang="ts">
import { PropType } from "@vue/runtime-core";

export interface PostData {
  id: string;
  content: string;
  isItemFinished: boolean;
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
