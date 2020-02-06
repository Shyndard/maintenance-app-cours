<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div class="d-flex align-center">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="https://cdn.vuetifyjs.com/images/logos/vuetify-logo-dark.png"
          transition="scale-transition"
          width="40"
        />

        <v-img
          alt="Vuetify Name"
          class="shrink mt-1 hidden-sm-and-down"
          contain
          min-width="100"
          src="https://cdn.vuetifyjs.com/images/logos/vuetify-name-dark.png"
          width="100"
        />
      </div>

      <v-spacer></v-spacer>

      <v-btn
        href="https://github.com/vuetifyjs/vuetify/releases/latest"
        target="_blank"
        text
      >
        <span class="mr-2">Latest Release</span>
        <v-icon>mdi-open-in-new</v-icon>
      </v-btn>
    </v-app-bar>

    <v-container fluid>
      <v-row dense>
        <v-col
          v-for="card in cards"
          :key="card.title"
          cols="4"
        >
          <ProductCard :title="card.title" :prix="card.prix" :info="card.info" :imageUri="card.imageUri"/>
        </v-col>
      </v-row>
    </v-container>
  </v-app>
</template>

<script>
import ProductCard from './components/productCard';

export default {
  name: 'App',

  components: {
    ProductCard,
  },

  data: () => ({
    cards: [
      {title: "Super outil", prix: 38, info:"Outil hyper important pour le jardinage", imageUri: "https://www.gifi.fr/media/catalog/product/cache/1/image/1000x/9df78eab33525d08d6e5fb8d27136e95/3/7/372537.jpg" },
      {title: "Petite robe", prix: 40, info: "Petit robe", imageUri:"https://www.cdiscount.com/pdt2/8/3/2/1/700x700/mp01230832/rw/robe-de-mariee-noamy-mariage-soiree-robedunevie.jpg"},
      {title: "Petit produit", prix: 50, info: "Petit produit", imageUri: "https://www.produitici.fr/upload/site/articles/courses.png"},
      {title:"Petite bombe", prix:100, info: "Petite bombe que pabs veut faire exploser", imageUri: "https://image.freepik.com/vecteurs-libre/bombe-dessin-anime_6317-2445.jpg"},
      {title: "Oui oui j'adore", prix: 10000, info:"Petite maintenance", imageUri:"https://resize.programme-television.ladmedia.fr/r/670,670/img/var/premiere/storage/images/tele-7-jours/news-tv/la-bombe-arte-une-captivante-plongee-dans-l-histoire-de-la-bombe-atomique-4590998/94533341-1-fre-FR/La-Bombe-Arte-Une-captivante-plongee-dans-l-histoire-de-la-bombe-atomique.png"},
      {title: "Super produit", prix: 100000, info: "Super produit", imageUri: "https://static.fnac-static.com/multimedia/Images/FD/Comete/65268/CCP_IMG_ORIGINAL/796775.jpg"},
      {title: "Ordinateur", prix: 5000, info: "Gros pc de la mort qui tue", imageUri:"https://external-preview.redd.it/eR8IEEdOg9VU6yzL0X6cz3iJSwfg_x_grddegDqSHjE.jpg?auto=webp&s=01c47f36fb1202fd2ef963d54cfdd27ee677c4c1"},
      {title: "Mac", prix: 1500, info: "Mac book pro", imageUri: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp13touch-space-select-201807_GEO_EMEA_LANG_FR?wid=892&hei=820&&qlt=80&.v=1531167628616"},
      {title: "Pc portable Dell", prix: 500, info: "Pc portable DELL", imageUri: "https://images-na.ssl-images-amazon.com/images/I/71iVsRjCKUL._AC_SX425_.jpg"},
      {title: "Pc portable asus", prix:1000, info: "Pc portable Asus", imageUri:"https://www.cybertek.fr/images_produits/3105cd26-5d96-4a90-89a4-3405694f4867.jpg"},
      {title: "Pc portable MSI", prix:1000, info:"Pc portable MSI", imageUri: "https://static.fnac-static.com/multimedia/Images/FR/MDM/08/dd/82/8576264/1520-3/tsp20200124081333/PC-Portable-MSI-GE63-Raider-RGB-8RE-482FR-15-6-Gaming.jpg"}
    ]
  }),
};
</script>
