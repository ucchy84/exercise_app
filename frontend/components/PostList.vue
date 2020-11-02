<template>
  <v-card>
    <v-card-title>
      Post List
      <v-spacer></v-spacer>
      <v-text-field
        v-model="search"
        append-icon="search"
        label="Search"
        single-line
        hide-details
      ></v-text-field>
    </v-card-title>
    <v-data-table
      :headers="headers"
      :items="posts"
      :search="search"
    ></v-data-table>
  </v-card>
</template>

<script>
export default {
  props: ["posts"],
  data() {
    return {
      search: "",
      headers: [
        {
          text: "タイトル",
          align: "left",
          sortable: false,
          value: "title",
        },
        { text: "ユーザー名", value: "name" },
      ],
    };
  },
};
</script>

<style>
</style>