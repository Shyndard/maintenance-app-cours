<template>
  <v-card
    class="mx-auto"
    max-width="400"
  >
    <v-img
      class="white--text align-end"
      height="200px"
      :src="imageUri"
    >
    </v-img>
    <v-card-title> {{ title }} </v-card-title>
    <v-card-subtitle class="pb-0"> {{ prix }} € </v-card-subtitle>

    <v-card-text class="text--primary">
      <div> {{ info }} </div>
    </v-card-text>

    <v-card-actions>
      <v-btn
        color="orange"
        text
      >
        Acheter
      </v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
  export default {
    name: 'ProductCard',
    props: {
        imageUri: String,
        title: String,
        info: String,
        prix: Number
    }
  }
</script>