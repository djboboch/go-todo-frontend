<template>
  <main
    class="col-span-full grid grid-cols-12 row-span-1 h-auto w-full rounded bg-white mt-36 py-12 relative"
  >
    <h1 class="col-span-full text-center text-4xl mb-4">Go-Todo</h1>
    <div class="col-span-10 col-start-2 row-start-2 h-96">
      <slot></slot>
    </div>

    <ItemAdder />

    <Button class="col-span-4 row-start-3 col-start-5 animate-bounce"> Add new Todo </Button>
  </main>
</template>

<script lang="ts">
import Button from "./basic/Button.vue";
import ItemAdder from "./ItemAdder.vue";

export default {
  components: {
    Button,
    ItemAdder
  },
};
</script>

<style></style>
