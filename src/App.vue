<script setup>
import { RouterView } from 'vue-router'
import PortfolioMenu from './components/PortfolioMenu.vue';
import PortfolioFooter from './components/PortfolioFooter.vue';
</script>
<template>
    <PortfolioMenu />
    <RouterView />
    <PortfolioFooter />
</template>

<style scoped>
</style>
