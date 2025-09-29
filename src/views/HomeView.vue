<script>
import AboutShort from '@/components/About-short.vue';
export default {
    components: {
        AboutShort
    }
}
</script>

<template>
    <div class="wrapper">
    <img src="/lac_allos.jpg" alt="lac_allos" class="background-image">
        <div class="abstract-container">
            <p class="abstract-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
        </div>
        <div class="about-container">
            <AboutShort></AboutShort>
        </div>
    </div>
</template>

<style scoped>
    .background-image {
        width: 100%;
        height: 100vh;
        object-fit: cover;
        z-index: -1;
    }
    .wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .abstract-container {
        background-color: var(--background-variant);
        width: 100%;
        height: 40vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0 20%;
    }
    .abstract-text {
        font-size: 1.5rem;
        color: var(--text-on-background);
        text-align: center;
    }
</style>