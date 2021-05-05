<template>
  <div class=" grid grid-cols-10 col-start-2 gap-x-6">
    <PostItem v-for="post in postList" :key="post.id"
    :postData="post" @post-delete="$emit('post-delete',$event)"/>
  </div>
</template>

<script lang="ts">
import PostItem, {PostData} from "./basic/PostItem.vue";
import {PropType} from "@vue/runtime-core";

export default {
  props: {
    postList: {
      type: Array as PropType<Array<PostData>>,
      required: true
    }
  },
  components:{
      PostItem
  }
};
</script>

<style></style>
