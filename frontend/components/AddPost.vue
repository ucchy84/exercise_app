<template>
  <v-form>
    <v-container>
      <v-row>
        <v-col clos="12" md="4">
          <v-text-field
            v-model="content"
            :counter="10"
            label="post"
            required
          ></v-text-field>
        </v-col>
        <v-col cols="12" md="4">
          <v-btn @click="handleSubmit">投稿</v-btn>
        </v-col>
      </v-row>
    </v-container>
  </v-form>
</template>

<script>
export default {
  data() {
    return {
      content: "",
    };
  },
  methods: {
    handleSubmit() {
      this.$emit("submit", this.content);
      this.content = "";
    },
  },
};
</script>

<style>
</style>