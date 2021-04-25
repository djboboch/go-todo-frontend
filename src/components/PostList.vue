<template>
  <div class=" grid grid-cols-10 col-start-2 gap-x-6">
    <Post v-for="post in postList" :key="post.id" 
    :postData="post"/>
  </div>
</template>

<script lang="ts">
import Post, { PostData } from "./basic/Post.vue";

let postList: PostData[] = [
  {
    id: "1",
    content: "Example content of the body",
    isItemFinished: false
  },
  {
    id: "2",
    content: "Example content of the body",
    isItemFinished: true
  },
  {
    id: "3",
    content: "Example content of the body",
    isItemFinished: false
  },
];

export default {
  data() {
    return {
      postList,
    };
  },
  components:{
      Post
  }
};
</script>

<style></style>
