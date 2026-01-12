<template>
    <div class="wrapper">
    <img src="/lac_allos.jpg" alt="lac_allos" class="background-image">
    <h1 class="name-title">TARRADE Marc</h1>
        <div class="abstract-container">
            <p class="abstract-text">Passionné par les technologies web et la cybersécurité, je poursuis actuellement un Master en ingénierie logicielle à l’ISCOD en alternance chez SAP, où je participe à des projets liés à la cyber sécurité. Fort d’expériences variées en développement fullstack, en IA et en sécurité applicative, j’aime concevoir des solutions innovantes, performantes et sécurisées. Curieux, rigoureux et orienté résultats, je cherche à allier excellence technique et impact concret dans mes projets.</p>
        </div>
        <div class="call-to-action">
            <button class="project">Voir mes projets</button>
            <button class="skills">Voir mes compétences</button>
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
    .call-to-action {
        display: flex;
        justify-content: space-around;
        align-items: center;
        height: 30vh;
        width: 100%;
        padding: 0 30%;
    }
    .project, .skills {
        height: 5rem;
        background-color: var(--secondary-color);
        color: #FFF;
        border: none;
        padding: 0.8rem 3rem;
        margin: 1rem;
        font-size: 1.2rem;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .project:hover, .skills:hover {
        background-color: var(--primary-color);
    }
</style>