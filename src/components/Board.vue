<template>
  <main
    class="col-span-full grid grid-cols-12 row-span-1 h-3/5 w-full rounded bg-white mt-36 py-12"
  >
    <h1 class="col-span-full text-center text-4xl">Go-Todo</h1>
    <slot></slot>

    <Button class="col-span-4 row-start-3 col-start-5 ">
        Add new Todo
    </Button>
  </main>
</template>

<script lang="ts">
import Button from "./basic/Button.vue";
export default {
    components: {
        Button
    }
};
</script>

<style></style>
