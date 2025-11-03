<script>
import CalendarIcon from '@/components/icons/CalendarIcon.vue';
import Modal from '@/components/Modal.vue';

export default {
    components: {
        CalendarIcon,
        Modal
    },
    data() {
        return {
            skills: [{
                name: "NodeJS",
                image: "Node.js_logo_vert.png",
                level: "Avancé",
                percentage: 75,
            },
            {
                name: "Angular",
                image: "Angular_logo.svg.png",
                level: "Intermédiaire",
                percentage: 60,
            },
            {
                name: "VueJS",
                image: "Logo-Vuejs.png",
                level: "Débutant",
                percentage: 20,
            },
            {
                name: "Docker",
                image: "docker_logo.png",
                level: "Avancé",
                percentage: 70,
            },
            {
                name: "Kubernetes",
                image: "k8s_logo.png",
                level: "Intermédiaire",
                percentage: 60,
            },
            {
                name: "PHP",
                image: "php-logo.png",
                level: "Débutant",
                percentage: 20,
            }, 
            {
                name: "SQL",
                image: "mysql-logo.svg",
                level: "Avancé",
                percentage: 70,
            },
            {   
                name: "MongoDB",
                image: "mongo_logo.png",
                level: "Débutant",
                percentage: 15,
            },
            {
                name: 'REST API',
                image: 'REST_API.png',
                level: "Intermédiaire",
                percentage: 60,
            },
            {
                name: "Git",
                image: "Git-Icon-1788C.png",
                level: "Intermédiaire",
                percentage: 60,
            },
            {
                name: "Python",
                image: "python_logo.png",
                level: "Débutant",
                percentage: 25,
            }]
        }
    }
}
</script>

<template>
    <div class="menu-margin"></div>
    <div class="wrapper">
        <h1 class="view-title">Mes compétences</h1>
        <div class="skill-list">
            <div v-for="skill in skills" class="skill-item">
                <div class="top-container">
                    <img :src="skill.image" :alt="skill.name" class="skill-image"/> 
                    <h2 class="skill-name">{{ skill.name }}</h2>
                </div>
                <div class="bottom-container">
                    <p class="skill-level">{{ skill.level }}</p>
                    <div class="skill-percentage-container">
                        <div :style="{width: skill.percentage + '%'}" class="my-percentage"></div>
                        <div class="rest-percentage"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .skill-list {
        display: flex;
        flex-direction: row;
        margin: 0 4%;
        margin-bottom: 5rem;
        width: 92%;
        flex-wrap: wrap;
    }

    .skill-item {
        border: 1px solid #ccc;
        padding: 0.5rem 1rem;
        border-radius: 8px;
        width: 18%;
        margin: 1rem;
        height: 35vh;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .skill-image {
        max-width: 100%;
        height: 15vh;
        border-radius: 4px;
        display: block;
        margin: 0 auto;
        object-fit: contain;
    }

    .skill-name {
        margin: 0.5rem 0;
        color: var(--secondary-color);
        text-align: center;
    }
    .skill-level {
        text-align: center;
        margin-bottom: 1rem;
        color: var(--secondary-color);
        font-weight: bold;
    }

    .skill-percentage-container {
        display: flex;
        height: 12px;
        overflow: hidden;
        margin-bottom: 1rem;
    }
    .my-percentage {
        background-color: var(--secondary-color);
        height: 100%;
        border-radius: 99px;
    }
    .rest-percentage {
        background-color: var(--tertiary-color);
        height: 100%;
        border-radius: 99px;
        flex-grow: 1;
        margin-left: 1%;
    }
</style>