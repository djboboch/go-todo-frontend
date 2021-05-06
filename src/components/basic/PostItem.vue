<template>
  <div
    class="col-span-5 border rounded mb-4 pt-4 pb-4 px-4 flex justify-between items-center relative shadow-lg"
  >
    <div>
      <span class="text-sm font-light" :class="{ 'done-text': postData.isItemFinished }">
        {{ postData.content }}</span
      >
    </div>
    <div
      class="delete-marker absolute"
      :class="{ active: postData.isItemFinished }"
      @click="$emit('post-delete', postData.id)"
    >
      <svg class="svg-icon" viewBox="0 0 20 20">
        <path
          d="M16.471,5.962c-0.365-0.066-0.709,0.176-0.774,0.538l-1.843,10.217H6.096L4.255,6.5c-0.066-0.362-0.42-0.603-0.775-0.538C3.117,6.027,2.876,6.375,2.942,6.737l1.94,10.765c0.058,0.318,0.334,0.549,0.657,0.549h8.872c0.323,0,0.6-0.23,0.656-0.549l1.941-10.765C17.074,6.375,16.833,6.027,16.471,5.962z"
        ></path>
        <path
          d="M16.594,3.804H3.406c-0.369,0-0.667,0.298-0.667,0.667s0.299,0.667,0.667,0.667h13.188c0.369,0,0.667-0.298,0.667-0.667S16.963,3.804,16.594,3.804z"
        ></path>
        <path
          d="M9.25,3.284h1.501c0.368,0,0.667-0.298,0.667-0.667c0-0.369-0.299-0.667-0.667-0.667H9.25c-0.369,0-0.667,0.298-0.667,0.667C8.583,2.985,8.882,3.284,9.25,3.284z"
        ></path>
      </svg>
    </div>
    <div
      class="done-marker"
      :class="{ active: postData.isItemFinished }"
      @click="toggleTodo()"
    >
      <svg class="svg-icon" viewBox="0 0 20 20">
        <path
          d="M7.629,14.566c0.125,0.125,0.291,0.188,0.456,0.188c0.164,0,0.329-0.062,0.456-0.188l8.219-8.221c0.252-0.252,0.252-0.659,0-0.911c-0.252-0.252-0.659-0.252-0.911,0l-7.764,7.763L4.152,9.267c-0.252-0.251-0.66-0.251-0.911,0c-0.252,0.252-0.252,0.66,0,0.911L7.629,14.566z"
        ></path>
      </svg>
    </div>
  </div>
</template>

<script lang="ts">
import {PropType} from "@vue/runtime-core";

export interface PostData {
  id: string;
  content: string;
  isItemFinished: boolean;
}

export default {
  props: {
    postData: {
      type: Object as PropType<PostData>,
      required: true,
    },
  },
  methods: {
    toggleTodo(): void {
      (this as any).postData.isItemFinished = !(this as any).postData
        .isItemFinished;
    },
  },
};
</script>

<style lang="scss" scoped>
$animation-duration: 300ms;

.done-text {
  text-decoration: line-through;
}

.done-marker {
  width: 20px;
  height: 20px;

  background-color: #ffffff;
  z-index: 2;

  border: 2px solid #e5e7eb;
  border-radius: 50%;
  cursor: pointer;

  transition: all $animation-duration ease-in;

  path {
    fill: #ffffff;
    transition: fill $animation-duration ease-in;
  }

  &.active {
    border-color: #10b981;
    path {
      fill: #10b981;
    }
  }
}

.delete-marker {
  width: 23px;
  height: 23px;

  opacity: 0;
  cursor: pointer;
  pointer-events: none;
  right: 15px;
  transition: all $animation-duration ease-in;
  z-index: 1;

  &.active {
    opacity: 1;
    pointer-events: all;

    right: 40px;
  }

  path {
    fill: #dc2626;
  }
}
</style>
