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
    <h1 class="name-title">TARRADE Marc</h1>
        <div class="abstract-container">
            <p class="abstract-text">Passionné par les technologies web et la cybersécurité, je poursuis actuellement un Master en ingénierie logicielle à l’ISCOD en alternance chez SAP, où je participe à des projets liés à la cyber sécurité. Fort d’expériences variées en développement fullstack, en IA et en sécurité applicative, j’aime concevoir des solutions innovantes, performantes et sécurisées. Curieux, rigoureux et orienté résultats, je cherche à allier excellence technique et impact concret dans mes projets.</p>
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
    .name-title {
        position: absolute;
        top: 30vh;
        left: 50%;
        transform: translateX(-50%);
        font-size: 4rem;
        color: #FFF;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
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