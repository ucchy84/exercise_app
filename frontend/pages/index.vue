<template>
  <div>
    <AddPost v-on:submit="addPost" />
    <PostList :posts="posts" />
  </div>
</template>

<script>
import AddPost from "@/components/AddPost";
import PostList from "@/components/PostList";

export default {
  components: {
    AddPost,
    PostList,
  },

  data() {
    return {
      posts: [],
    };
  },

  methods: {
    addPost(title) {
      this.posts.push({
        title,
      });
    },
  },
};
</script>

<style>
</style>
