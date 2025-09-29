<template>
    <div class="about-container">
        <h2 class="about-title">A propos</h2>
        <div class="timeline">
            <div class="timeline-item right">
                <img src="/iscod.png" alt="">
                <div class="timeline-content">
                    <p>Iscod: Mastère Expert en Ingénierie du Logiciel</p>
                    <span>2024 - 2026</span>
                </div>
            </div>
            <span class="timeline-line"></span>
            <div class="timeline-item left">
                <img src="/iut_nice.jpg" alt="">
                <div class="timeline-content">
                    <p>IUT Nice cote d'azur: Licence DAM</p>
                    <span>2024 - 2026</span>
                </div>
            </div>
            <span class="timeline-line"></span>
            <div class="timeline-item right">
                <img src="/estienne_dorves.svg" alt="">
                <div class="timeline-content">
                    <p>Lycée Estienne d'Orves: BTS SIO</p>
                    <span>2024 - 2026</span>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .about-container {
        width: 100vw;
        padding: 1rem 0;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .about-title {
        font-size: 2rem;
        text-align: center;
        margin-bottom: 20px;
        color: var(--primary-color);
    }
    .timeline {
        width: 80%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .timeline-item {
        display: flex;
        justify-content: center;
        width: 80%;
        position: relative;
    }
    .right .timeline-content{
        right: -75px;
    }
    .left .timeline-content {
        text-align: right;
        left: -75px;
    }
    .timeline-item img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        border: 1px solid var(--primary-color);
        object-fit: scale-down;
    }
    .timeline-content {
        position: absolute;
        height: 100%;
        padding: 10px;
        border-radius: 10px;
        color: var(--text-on-background);
        width: 50%;
    }
    .timeline-content p {
        margin: 0;
        font-size: 1.2rem;
        font-weight: bold;
        color: var(--secondary-color);
    }
    .timeline-content span {
        display: block;
        font-size: 1rem;
        color: var(--sub-text);
    }
    .timeline-line {
        width: 2px;
        background-color: var(--tertiary-color);
        height: 100px;
    }
</style>