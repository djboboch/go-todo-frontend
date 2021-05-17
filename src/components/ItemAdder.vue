<template>
  <div class="w-full max-w-md min-w-sm rounded bg-blue-400 absolute flex flex-col justify-center px-8 py-4">
    <form @submit.prevent>
      <input type="text" :maxlength="255" v-model="todoContent">
    </form>
    <Button @click="addNewTodo">Add new todo</Button>
  </div>
</template>

<script lang="ts">
import {defineComponent} from "vue";
import Button from "./basic/Button.vue";
import {CreatePostRequest} from "../models/requests";

export default defineComponent({
  name: "TodoAdder",
  components: {Button},
  emits: ['postAdded'],
  data() {
    return {
      isOpen: {
        type: Boolean,
        default: false
      },
      todoContent: ""
    }
  },
  methods: {
    addNewTodo(): void {
      if (this.todoContent) {

        const createPostRequest: CreatePostRequest = {
          content: this.todoContent
        }

        fetch(import.meta.env.VITE_BACKEND_URL + "/api/v1/todo",
            {
              method: "POST",
              body: JSON.stringify(createPostRequest),
              headers: {
                "Content-Type": "application/json"
              }
            })
            .then(response => response.json())
            .then(data => {
              if (data.status == "ok") {
                this.$emit("postAdded", data.content)
              }
            })
      }
    }
  }
})
</script>

<style scoped>

</style>