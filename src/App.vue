<template>
  <div class="container mx-auto grid grid-cols-12">
    <Board>
      dsd
    </Board>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Board from "./components/Board.vue";

export default defineComponent({
  name: "App",
  components: {
    Board,
  },
});
</script>

<style></style>
