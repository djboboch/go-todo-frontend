<template>
  <div class="container mx-auto grid grid-cols-12">
    <Board @post-added="addPost($event)">
      <PostList v-if="postItems.length !== 0"
                :post-list="postItems"
                @post-delete="deleteTodoItem"/>
      <div v-else class="h-full text-xl flex justify-center items-center">
        You Have no todo's.
      </div>
    </Board>
  </div>
</template>

<script lang="ts">
import {defineComponent} from "vue";
import Board from "./components/Board.vue";
import PostList from "./components/PostList.vue"
import {PostData} from "./components/basic/PostItem.vue";

export default defineComponent({
  name: "App",
  components: {
    Board,
    PostList
  },
  data() {
    return {
      postItems: [] as PostData[]
    }
  },
  mounted() {
    this.fetchAllTodoItems();
  },
  methods: {
    fetchAllTodoItems(): void {
      fetch(import.meta.env.VITE_BACKEND_URL + "/api/v1/todo")
          .then(response => response.json())
          .then(data => {
            if (data.status == "ok") {

              if (data.content instanceof Array) {
                this.postItems = data.content
              } else {
                console.log(data.content)
              }
            }
          })
    },
    async deleteTodoItem(id: string): Promise<void> {
      fetch(import.meta.env.VITE_BACKEND_URL + `/api/v1/todo/${id}`, {
        method: "DELETE"
      })
          .then(response => response.json())
          .then(data => {
            if (data.status === "ok") {
              this.postItems = this.postItems.filter(obj => !(obj.id == id))
            }
          })
    },
    addPost(post: PostData){
      this.postItems.push(post)
    }
  }
});
</script>

<style></style>
