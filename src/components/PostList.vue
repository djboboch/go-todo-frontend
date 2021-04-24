<template>
  <div class="col-span-6 col-start-4 flex flex-col">
    <Post v-for="post in postList" :key="post.id" 
    :postData="post"/>
  </div>
</template>

<script lang="ts">
import Post, { PostData } from "./elements/Post.vue";

let postList: PostData[] = [
  {
    id: "1",
    header: "Test header",
    content: "Example content of the body",
  },
  {
    id: "2",
    header: "Test header 2",
    content: "Example content of the body",
  },
  {
    id: "3",
    header: "Test header 3",
    content: "Example content of the body",
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
