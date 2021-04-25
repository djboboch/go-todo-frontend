<template>
  <div class="container mx-auto grid grid-cols-12">
    <Board>
      <PostList />
    </Board>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Board from "./components/Board.vue";
import PostList from "./components/PostList.vue"

export default defineComponent({
  name: "App",
  components: {
    Board,
    PostList
  },
});
</script>

<style></style>
