<script setup>
import { RouterView } from 'vue-router'
import { useRoute } from 'vue-router'
import { useHead } from '@vueuse/head'
import { watch } from 'vue'
import PortfolioMenu from './components/PortfolioMenu.vue';
import PortfolioFooter from './components/PortfolioFooter.vue';

const route = useRoute()

watch(() => route.meta, (meta) => {
  useHead({
    title: meta.title || 'Portfolio Marc Tarrade',
    meta: [
      { name: 'description', content: meta.description || 'Portfolio de Marc Tarrade' }
    ]
  })
}, { immediate: true })
</script>
<template>
    <PortfolioMenu />
    <RouterView />
    <PortfolioFooter />
</template>

<style scoped>
</style>
