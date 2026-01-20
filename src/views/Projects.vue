<script>
import CalendarIcon from '@/components/icons/CalendarIcon.vue';
import Modal from '@/components/Modal.vue';
import { onMounted, watch } from 'vue';
import { useRoute } from 'vue-router';

export default {
    components: {
        CalendarIcon,
        Modal
    },
    data() {
        return {
            openModalIndex: null,
            projects: [
            {
                slug: "cloud-active-defense",
                title: "Cloud Active Defense",
                image: "SunDEW_logo.png",
                date: "2024-2026",
                presentation: "Cloud Active Defense est une application de cybersécurité permettant de déployer des leurres au sein d’applications cloud clientes afin de les protéger. Ces leurres ont pour objectif de tromper les pirates informatiques qui tenteraient de compromettre l’application",
                objectives: "Dans un contexte où la cybersécurité devient de plus en plus critique, Cloud Active Defense permet de protéger des applications existantes sans nécessiter de modification de leur code. L’objectif est de sécuriser ces applications grâce à des leurres qui simulent des vulnérabilités, afin de détecter les tentatives d’attaque, puis de bloquer les attaquants (blacklisting) et d’empêcher toute récidive",
                challenges: "L’enjeu principal était de protéger des applications, principalement web, hébergées dans le cloud, tout en permettant aux utilisateurs de simplement configurer Cloud Active Defense sans modifier leur code existant. Le risque majeur était de ne pas compromettre la sécurité ou la stabilité de l’application protégée en ajoutant cette surcouche, et d’éviter l’introduction de nouvelles failles",
                steps: [
                    "Optimisation du proxy d’injection de leurres",
                    "Ajout d’une pipeline permettant de récupérer les logs d’alerte lors d’une détection via un leurre",
                    "Conception de l’architecture du projet lors d’un Threat Modeling",
                    "Développement de l’application permettant de configurer les leurres et de consulter les alertes",
                    "Conteneurisation des différents services et configuration pour un déploiement dans le cloud"
                ],
                result: "Sur le plan personnel, ce projet m’a permis de monter significativement en compétences sur des technologies que je ne maîtrisais pas auparavant et de découvrir le domaine de la cybersécurité. Pour l’entreprise, il représente un levier d’attractivité pour sa plateforme cloud, l’application étant préconfigurée pour un déploiement sur SAP BTP Kyma",
                next: "Ajout d’un clone crédible de l’application protégée, réalisé en copiant le code exposé publiquement du site tout en modifiant les données avec des informations fictives mais cohérentes. Cette approche permet de piéger les attaquants en les redirigeant vers ce clone",
                critique: "Le projet est aujourd’hui bien avancé et l’idée de base est pleinement implémentée (leurres, consultation des alertes, configuration, etc.). Certains axes d’amélioration restent à explorer, notamment la possibilité pour les utilisateurs de générer eux-mêmes un clone de leur application. Ce projet m’a permis de découvrir de nouvelles technologies que je maîtrise désormais et a fortement contribué à ma montée en compétences",
                skills: [
                    {
                        name: "Angular", 
                        link: "/skills?skill=angular",
                        image: 'Angular_logo.svg.png'
                    }, 
                    {
                        name: "Node.js", 
                        link: "/skills?skill=nodejs",
                        image: 'nodejs_logo.svg'
                    }, 
                    {
                        name: "Docker", 
                        link: "/skills?skill=docker",
                        image: 'docker_logo.png'
                    }, 
                    {
                        name: "Kubernetes", 
                        link: "/skills?skill=kubernetes",
                        image: 'k8s_logo.png'
                    },
                    {
                        name: "Autonomie", 
                        link: "/skills?skill=autonomie",
                        image: 'autonomie.png'
                    },
                    {
                        name: "Capacité d'auto-formation", 
                        link: "/skills?skill=auto-formation",
                        image: 'autoformation.png'
                    }, 
                    {
                        name: "Communication",
                        link: "/skills?skill=communication",
                        image: 'communication.png'
                    }
                ],
                
            },
            {
                slug: "portfolio",
                title: "Portfolio",
                image: "portfolio_screen.jpg",
                date: "2025",
                presentation: "Mon portfolio est une application web développée avec Vue.js ayant pour but de montrer mon profil et mes compétences",
                objectives: "Dans le cadre de mon master en ingénierie logicielle à l’ISCOD, j’ai développé une application web pour mon portfolio destinée à montrer mes compétences, mes réalisations ainsi que mon parcours professionnel",
                challenges: "L’enjeu est de pouvoir démontrer mes compétences, mes réalisations et mon parcours professionnel de façon claire et constructive, et en respectant les consignes et la grille d’évaluation du portfolio donnée par l’ISCOD",
                steps: [
                    "Conception des designs UI pour l’application",
                    "Apprentissage de Vue.js à l’aide de tutoriels de la documentation Vue.js",
                    "Rédaction des articles de compétences, réalisations et du parcours professionnel",
                    "Développement de l’application avec Vue.js"

                ],
                result: "Sur le plan personnel, ce projet m’a permis d’apprendre une nouvelle compétence et technologie, Vue.js, et me permet d’avoir un support supplémentaire pour montrer mes compétences dans le monde professionnel",
                next: "Continuer à améliorer l’application en y ajoutant de nouvelles compétences acquises et réalisations/expériences qui en découlent, ainsi que l’amélioration des animations et du style de l’application",
                critique: "Mon portfolio est terminé et présente bien tout ce qu’un portfolio doit contenir : mes compétences techniques et non techniques, mes réalisations et mon parcours professionnel avec toutes mes expériences et formations",
                skills: [
                    {
                        name: "VueJS", 
                        image: 'Logo-Vuejs.png',
                        link: "/skills?skill=vuejs",
                    },
                    {
                        name: "Autonomie",
                        image: 'autonomie.png',
                        link: "/skills?skill=autonomie",
                    }
                ],
                
            },
            {
                slug: "datahub",
                title: "DataHub",
                image: "ciffreobona_logo.png",
                date: "2021-2022",
                presentation: "Le Datahub est une application permettant de gérer et de consulter les produits dont dispose l’entreprise Ciffreo Bona. L’application référence tous les produits de la marque et les classe dans différents groupes et sous-groupes",
                objectives: "Dans le cadre d’un projet en entreprise, j’ai amélioré une application interne existante, le Datahub, destinée à centraliser et gérer les données produits de Ciffreo Bona de manière efficace. L’objectif était d’ajouter de nouvelles fonctionnalités à cette application et de corriger les nombreux bugs qu’elle comportait",
                challenges: "L’enjeu est d’ajouter de nouvelles fonctionnalités à l’application existante demandées par le client, de corriger les bugs trouvés par le client ainsi que ceux identifiés par l’équipe de développement, et d’optimiser les performances de l’application",
                steps: [
                   "Formation sur Angular 1 et Node.js",
                   "Ajout d’une nouvelle fonctionnalité de sous-catégorie pour classer les produits",
                   "Correction de bugs trouvés par le client",
                   "Ajout d’une fonctionnalité pour récupérer des données produits via une API d’une entreprise externe"
                ],
                result: "L’application est maintenant optimisée, avec de nouvelles fonctionnalités performantes, et de nombreux bugs ont été résolus. Le client peut désormais être autonome avec l’application ; les demandes ont fortement été réduites après l’ensemble des correctifs",
                next: "L’application demande toujours un peu de maintenance sur certains points. Il faut également effectuer une migration vers des technologies plus récentes d’Angular et de Node.js, car les versions actuelles ne sont plus maintenues",
                critique: "Le projet est aujourd’hui terminé, il n’y a plus besoin d’une maintenance importante. L’application fonctionne bien et est très optimisée au vu des technologies sur lesquelles elle repose. Personnellement, ce projet m’a appris à gérer la relation client et m’a donné une première expérience sur un projet en entreprise",
                skills: [
                    {
                        name: "Angular", 
                        image: 'Angular_logo.svg.png',
                        link: "/skills?skill=angular",
                    }, 
                    {
                        name: "NodeJS", 
                        image: 'nodejs_logo.svg',
                        link: "/skills?skill=nodejs",
                    },
                    {
                        name: "Communication",
                        image: 'communication.png',
                        link: "/skills?skill=communication",
                    },
                    {
                        name: "Relation client",
                        image: 'relation-client.png',
                        link: "/skills?skill=relation-client"
                    },
                    {
                        name: "Capacité d'auto-formation",
                        image: 'autoformation.png',
                        link: "/skills?skill=auto-formation"
                    }
                ],

            },
            {
                slug: "auribeau-judo",
                title: "Auribeau Judo",
                image: "logo_aurib.jpg",
                date: "2020",
                presentation: "Auribeau Judo est un site vitrine de mon ancien club de judo qui permet de consulter les actualités du club, les tarifs ainsi que les informations du club",
                objectives: "Le site d’Auribeau Judo était vieillissant et peu pratique à gérer pour le professeur de judo qui s’en occupait. L’objectif était de faire une refonte complète du site pour en faire un site vitrine propre avec la possibilité d’ajouter des actualités du club plus simplement qu’en allant modifier le code (anciennement fait comme tel)",
                challenges: "L’enjeu ici est de pouvoir proposer un site performant qui répond à la demande et qui permet d’ajouter des actualités via un simple formulaire depuis un back office",
                steps: [
                   "Définition des besoins du site",
                   "Analyse du site existant",
                   "Développement du site vitrine (statique)",
                   "Développement du back office et de l’affichage dynamique des actualités"
                ],
                result: "Pour moi, ce projet m’a permis de mettre en pratique pour une première fois mes compétences récemment acquises et de progresser sur la technologie PHP. Pour le club, le site a permis à beaucoup d’utilisateurs de simplifier la consultation des actualités, mais aussi de toutes les informations du club (tarifs, horaires…), ainsi que de rendre plus accessible la création et la rédaction des actualités",
                next: "Améliorer l’esthétique du site pour le rendre plus moderne, intégrer un webhook permettant de récupérer les articles postés sur Facebook afin de les ajouter automatiquement en tant qu’actualités sur le site",
                critique: "Le projet est toujours fonctionnel aujourd’hui, plusieurs années après. Il m’a permis de me familiariser avec PHP, la gestion de projet et l’autonomie, tant du côté de la gestion des attentes client que du développement",
                skills: [
                    {
                        name: "PHP", 
                        image: 'php-logo.png',
                        link: "/skills?skill=php",
                    },
                    {
                        name: "Autonomie",
                        image: 'autonomie.png',
                        link: "/skills?skill=autonomie",
                    }
                ],
            }]
        }
    },
    setup() {
        const route = useRoute();
        return { route };
    },
    mounted() {
        window.addEventListener('keydown', this.handleKeydown);

        // Watch for changes in the route query to handle the project slug
        watch(
            () => this.route.query.project,
            (projectSlug) => {
                if (projectSlug) {
                    const projectIndex = this.projects.findIndex(project => project.slug === projectSlug);
                    if (projectIndex !== -1) {
                        this.openModalIndex = projectIndex;
                    }
                }
            },
            { immediate: true } // Run immediately on mount
        );
    },
    beforeUnmount() {
        window.removeEventListener('keydown', this.handleKeydown);
    },
    methods: {
        handleKeydown(e) {
            if (e.key === 'Escape' && this.openModalIndex !== null) {
                this.openModalIndex = null;
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
            <template v-for="(project, idx) in projects" :key="idx">
                <div class="project-item"  @click="openModalIndex = idx">
                    <img :src="project.image" :alt="project.title + '-project'" class="project-image"/> 
                    <h2 class="project-title">{{ project.title }}</h2>
                    <div class="project-date-container">
                        <CalendarIcon/>
                        <p class="project-date">{{ project.date }}</p>
                    </div>
                    <p class="project-description" v-html="project.shortDescription"></p>
                    <div class="skills-container">
                        <div v-for="skill in project.skills" class="skill-item">
                            <img :src="skill.image" :alt="skill.name + '-icon'" class="skill-image" :title="skill.name"/>
                            <p class="skill-text">{{ skill.name }}</p>
                        </div>
                    </div>
                </div>
                <Modal :visible="openModalIndex == idx" @close="openModalIndex = null">
                    <h2 class="modal-project-title">{{project.title}}</h2>
                    <img :src="project.image" :alt="project.title" class="modal-project-image"/>
                    <div class="project-date-container">
                        <CalendarIcon/>
                        <p class="project-date">{{ project.date }}</p>
                    </div>
                    <h3 class="modal-sub-title">Présentation et définition:</h3>
                    <p class="modal-text">{{ project.presentation }}</p>
                    <h3 class="modal-sub-title">Contexte et objectifs:</h3>
                    <p class="modal-text">{{ project.objectives }}</p>
                    <h3 class="modal-sub-title">Enjeux et risques:</h3>
                    <p class="modal-text">{{ project.challenges }}</p>
                    <div class="steps-container">
                        <h3 class="modal-sub-title">Étapes du projet:</h3>
                        <ul>
                            <li v-for="(step, stepIdx) in project.steps" :key="stepIdx">{{ step }}</li>
                        </ul>
                    </div>
                    <h3 class="modal-sub-title">Résultats:</h3>
                    <p class="modal-text">{{ project.result }}</p>
                    <h3 class="modal-sub-title">Le lendemain du projet:</h3>
                    <p class="modal-text">{{ project.next }}</p>
                    <h3 class="modal-sub-title">Mon regard critique:</h3>
                    <p class="modal-text">{{ project.critique }}</p>
                    <div class="skill-container">
                        <h3 class="modal-sub-title">Compétences rattachés:</h3>
                        <div class="skills-container">
                            <router-link v-for="(skill, sIdx) in project.skills" :key="sIdx" :to="skill.link" class="skill-item skill-item-modal">
                                <img :src="'/portfolio-tarrade/' + skill.image" :alt="skill.name" class="skill-image">
                                <p class="skill-text">{{ skill.name }}</p>
                            </router-link>
                        </div>
                    </div>
                </Modal>
            </template>
        </div>
    </div>
</template>

<style scoped>
    .project-list {
        display: flex;
        flex-direction: row;
        margin: 0 6%;
        margin-bottom: 5rem;
        flex-wrap: wrap;
        justify-content: space-around;
    }

    .project-item {
        border: 1px solid #ccc;
        padding: 0.5rem 1rem;
        border-radius: 8px;
        width: 18rem;
        cursor: pointer;
        margin: 2rem 1rem;
        transition: all 0.3s ease;
        min-height: 24rem;
    }
    .project-item:hover {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transform: translateY(-4px);
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
        text-decoration: none;
        color: var(--text-on-background);
        transition: 0.3s;
    }
    .skill-item-modal:hover {
        background-color: var(--tertiary-color);
        color: var(--text-on-primary);
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
    .modal-sub-title {
        margin-top: 1.4rem;
        margin-bottom: 1rem;
        color: var(--secondary-color);
    }
    .steps-container, .skill-container {
        margin-top: 1.4rem;
    }
    .steps-container ul {
        padding-left: 1.2rem;
    }
    .steps-container li {
        margin-bottom: 0.3rem;
    }

    @media screen and (max-width: 425px){
        .project-item {
            margin: 1rem 0;
        }
        
    }
</style>