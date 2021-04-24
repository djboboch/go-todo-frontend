<template>
  <button
      class="rounded py-3 bg-indigo-600 hover:bg-indigo-700 shadow-lg text-white uppercase font-bold"
      @click="$emit('click')"
    >
      <slot>
      </slot>
    </button>
</template>

<script>
export default {

}
</script>

<style>

</style>