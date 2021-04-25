<template>
  <main
    class="col-span-full grid grid-cols-12 row-span-1 h-auto w-full rounded bg-white mt-36 py-12"
  >
    <h1 class="col-span-full text-center text-4xl mb-4">Go-Todo</h1>
    <div class="col-span-10 col-start-2 row-start-2 h-96">
      <slot></slot>
    </div>

    <Button class="col-span-4 row-start-3 col-start-5"> Add new Todo </Button>
  </main>
</template>

<script lang="ts">
import Button from "./basic/Button.vue";
export default {
  components: {
    Button,
  },
};
</script>

<style></style>
