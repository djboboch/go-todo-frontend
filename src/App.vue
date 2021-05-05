<template>
  <div class="container mx-auto grid grid-cols-12">
    <Board>
      <PostList :post-list="postItems" @post-delete="deleteTodoItem"/>
    </Board>
  </div>
</template>

<script lang="ts">
import {defineComponent} from "vue";
import Board from "./components/Board.vue";
import PostList from "./components/PostList.vue"

export default defineComponent({
  name: "App",
  components: {
    Board,
    PostList
  },
  data() {
    return {
      postItems: []
    }
  },
  mounted() {
    this.fetchAllTodoItems();
  },
  methods: {
    async fetchAllTodoItems(): Promise<void> {
      fetch(import.meta.env.VITE_BACKEND_URL+"/api/v1/todo")
          .then(response => response.json())
          .then(data => {
            console.log(data)
            this.postItems = data
          })
    },
    async deleteTodoItem(id: string): Promise<void> {
      fetch(import.meta.env.VITE_BACKEND_URL + `/api/v1/todo/${id}`, {
        method: "DELETE"
      })
      .then(response => response.text())
      .then(data => console.log(data))

    }
  }
});
</script>

<style></style>
