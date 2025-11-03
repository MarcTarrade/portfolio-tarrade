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
            openModal: null,
            modalContent: { title: '', description: '', image: '' },
            projects: [
            {
                title: "Cloud Active Defense",
                image: "SunDEW_logo.png",
                date: "2024-2026",
                skills: [{name: "Angular", image: 'Angular_logo.svg.png'}, {name: "Node.js", image: 'nodejs_logo.svg'}, {name: "Postgres", image: 'postgres_logo.png'}, {name: "Docker", image: 'docker_logo.png'}, {name: "Kubernetes", image: 'k8s_logo.png'}],
                shortDescription: `<a class="project-link" href="https://github.com/SAP/cloud-active-defense">Cloud Active Defense</a> est une application de cybersécurité développée pour piéger les attaquants et analyser leurs comportements. L'application permet de "s'auto défendre" grace a son système de détection d'intrusion et de réponse automatisée.`,
                description: `<a class="project-link" href="https://github.com/SAP/cloud-active-defense">Cloud Active Defense</a> est une application de cybersécurité développée pour piéger les attaquants et analyser leurs comportements. L'application permet de "s'auto défendre" grace a son système de détection d'intrusion et de réponse automatisée.<br><br>
                Ce projet faisait partie de mon alternance chez SAP en tant que développeur DevSecOps, où j'ai travaillé depuis la création du projet jusqu'à une version stable prête pour la production. J'ai participé à toutes les étapes du développement, de la conception à la mise en œuvre, en passant par les tests et le déploiement.`
            },
            {
                title: "Portfolio",
                image: "portfolio_screen.jpg",
                date: "2025",
                skills: [{name: "VueJS", image: 'Logo-Vuejs.png'}],
                shortDescription: `Ce portfolio est une application web développée avec VueJS pour présenter mes compétences, projets et expériences professionnelles.`,
                description: `Ce portfolio est une application web développée avec VueJS pour présenter mes compétences, projets et expériences professionnelles.<br><br>
                `
            },
            {
                title: "DataHub",
                image: "ciffreobona_logo.png",
                date: "2021-2022",
                skills: [{name: "AngularJS", image: 'Angular_logo.svg.png'}, {name: "NodeJS", image: 'nodejs_logo.svg'}, {name: "MongoDB", image: 'mongo_logo.png'}, {name: "MySQL", image: 'mysql-logo.svg'}],
                shortDescription: `Le DataHub est une application web interne développée pour <a class="project-link" href="https://www.ciffreo-bona.com">Ciffreo Bona</a>, une entreprise spécialisée dans le BTP et la construction. L'application vise à centraliser et gérer les données produit de l'entreprise de manière efficace.`,
                description: `Le DataHub est une application web interne développée pour <a class="project-link" href="https://www.ciffreo-bona.com">Ciffreo Bona</a>, une entreprise spécialisée dans le BTP et la construction. L'application vise à centraliser et gérer les données produit de l'entreprise de manière efficace.<br><br>
                J'ai travaillé sur ce projet en tant que développeur web full-stack. Mon rôle principal était de développer de nouvelle fonctionnalité et corriger des bugs en utilisant AngularJS pour le front-end et NodeJS pour le back-end.`
            },
            {
                title: "Auribeau Judo",
                image: "logo_aurib.jpg",
                date: "2020",
                skills: [{name: "PHP", image: 'php-logo.png'}, {name: "MySQL", image: 'mysql-logo.svg'}],
                shortDescription: `<a class="project-link" href="https://auribeaujudo.fr">Auribeau Judo</a> est un site vitrine de mon club de Judo qui permet de consulter les actualités du club, les tarifs ainsi que les infos du club. Le site possede aussi un back office pour ajouter des nouvelles actualités au site`,
                description: `<a class="project-link" href="https://auribeaujudo.fr">Auribeau Judo</a> est un site vitrine de mon club de Judo qui permet de consulter les actualités du club, les tarifs ainsi que les infos du club. Le site possede aussi un back office pour ajouter des nouvelles actualités au site.<br><br>
                Mon club de Judo avait un site qui était difficile de mettre à jour et qui avait besoin d'une refonte graphique. A l'époque un developpeur etait necessaire pour rajouter une actualité au site, un adhérent bénevole qui n'etait pas developpeur web de formation s'occupait de faire les changements directement dans le code du site. Etant en étude à ce moment la, mon club m'a demandé si je pouvais m'occuper de la refonte du site `
            }]
        }
    },
    mounted() {
        window.addEventListener('keydown', this.handleKeydown);
    },
    beforeUnmount() {
        window.removeEventListener('keydown', this.handleKeydown);
    },
    methods: {
        handleKeydown(e) {
            if (e.key === 'Escape' && this.openModal !== null) {
                this.openModal = null;
            }
        }
    }
}
</script>

<template>
    <div class="menu-margin"></div>
    <div class="wrapper">
        <h1 class="view-title">Mes projets</h1>
        <div class="project-list">
            <div v-for="project in projects" class="project-item" :key="idx" @click="openModal = true; modalContent = { description: project.description, image: project.image, title: project.title }">
                <img :src="project.image" :alt="project.title" class="project-image"/> 
                <h2 class="project-title">{{ project.title }}</h2>
                <div class="project-date-container">
                    <CalendarIcon/>
                    <p class="project-date">{{ project.date }}</p>
                </div>
                <p class="project-description" v-html="project.shortDescription"></p>
                <div class="skills-container">
                    <div v-for="skill in project.skills" class="skill-item">
                        <img :src="skill.image" :alt="skill.name" class="skill-image" :title="skill.name"/>
                        <p class="skill-text">{{ skill.name }}</p>
                    </div>
                </div>
            </div>
            <Modal :visible="openModal" @close="openModal = null">
                <h2 class="modal-project-title">{{modalContent.title}}</h2>
                <img :src="modalContent.image" :alt="modalContent.title" class="modal-project-image"/>
                <p class="modal-project-description" v-html="modalContent.description"></p>
            </Modal>
        </div>
    </div>
</template>

<style scoped>
    .project-list {
        display: flex;
        flex-direction: row;
        margin: 0 4%;
        margin-bottom: 5rem;
    }

    .project-item {
        border: 1px solid #ccc;
        padding: 0.5rem 1rem;
        border-radius: 8px;
        width: 20%;
        cursor: pointer;
        margin: 0 1rem;
    }

    .project-image {
        max-width: 100%;
        height: 20vh;
        border-radius: 4px;
        display: block;
        margin: 0 auto;
        object-fit: contain;
    }

    .project-title {
        margin: 0.5rem 0;
        color: var(--secondary-color);
        text-align: center;
    }

    .project-date-container {
        display: flex;
        align-items: center;
        background-color: #E0E1DD;
        border: 1px solid #797979;
        border-radius: 8px;
        width: fit-content;
        padding: 0 0.2rem;
    }
    .project-date {
        color: #000;
        font-size: 0.9rem;
        font-weight: 500;
    }

    .project-description {
        margin-top: 1rem;
    }

    ::v-deep(.project-link) {
        color: #3498db;
        text-decoration: none;
    }

    ::v-deep(.project-link:hover) {
        text-decoration: underline;
    }
    
    .skills-container {
        display: flex;
        flex-wrap: wrap;
        margin-top: 1rem;
    }
    .skill-item {
        display: flex;
        align-items: center;
        margin-right: 1rem;
        margin-bottom: 0.5rem;
        border: 1px solid #797979;
        border-radius: 99px;
        padding: 0.1rem 0.5rem;

    }
    .skill-image {
        max-width: 1.8rem;
        margin-right: 0.2rem;
    }
    .skill-text {
        font-size: 0.9rem;
        font-weight: 600;
    }
    .modal-project-title {
        margin-bottom: 1rem;
        color: var(--secondary-color);
        text-align: center;
    }
    .modal-project-image {
        display: block;
        margin: 0 auto;
        height: 20vh;
        margin-bottom: 2rem;
    }
    .modal-project-description {
        margin: 0 1rem 0 1rem;
    }
</style>