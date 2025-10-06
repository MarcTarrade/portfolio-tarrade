<script>
import AboutShort from '@/components/About-short.vue';
import Modal from '@/components/Modal.vue';
export default {
    components: {
        AboutShort,
        Modal
    },
    data() {
        return {
            openModalIndex: null,
            timeline: [
                {
                    img: "/SAP.png",
                    title: "SAP: Alternant DevOps cyber sécurité",
                    date: "2024 - 2026",
                    modalContent: `Developpement d'une application open source permettant de protéger n'importe quel application web contre des attaques malveillantes.
                    Cette application a pour but de détecter et bloquer les requêtes suspectes en analysant le trafic HTTP entrant et sortant grace à un reverse proxy.
                    En plus de détecter l'application peut permettre d'injecter des leurres dans les requetes HTTP pour tenter les attaquants. L'application vient avec un "dashboard" web qui permet de gérer
                    le configuration de l'application, des leurres, de la détection et des logs d'alertes suite aux detections ainsi que gérer le deploiement de l'application dans son cluster Kubernetes<br><br>
                    <b>Technologies utilisées :</b><br>
                    - Backend: Node.js, Express.js<br>
                    - Frontend: Angular<br>
                    - Systeme de gestion de base de données: Postgres<br>
                    - Envoy avec plugin Go pour le reverse-proxy<br>
                    - Deploiement: Docker, Kubernetes, Helm, Kyma (Cloud)<br>
                    - Autre: Git, CI/CD (Github actions)<br><br>
                    Ce projet est en cours de developpement et est déjà open source sur Github: <a href="https://github.com/SAP/cloud-active-defense">Cloud Active Defense</a>                    `
                },
                {
                    img: "/iscod.png",
                    title: "Iscod: Mastère Expert en Ingénierie du Logiciel",
                    date: "2024 - 2026",
                    modalContent: `Diplome de Mastère en Ingénierie du Logiciel toujours en cours.
                    Formation axée sur la conception, le developpement et l'architecture des logiciels, ainsi que la gestion d'un projet<br><br>
                    <b>Compétences acquises :</b><br>
                    - Analyse et conception de logiciels<br>
                    - Architecture logicielle<br>
                    - Framework (Spring, Angular, Android Kotlin)<br>
                    - DevOps (CI/CD, Docker, Kubernetes)<br><br>
                    Cette formation me permet de me spécialiser dans l'ingénierie logicielle et d'acquérir des compétences avancées pour concevoir, développer et gérer des logiciels complexes et performants`
                },
                {
                    img: "/nextsourcia.jpg",
                    title: "NextSourcia: Developpeur FullStack",
                    date: "2021 - 2022",
                    modalContent: `Developpement et administration d'une application web pour un client de l'entreprise pour gérer leurs produits.<br>
                    J'ai pendant un an pû travailler sur le developpement de nouvelles fonctionnalités pour cette application, ainsi que sur la maintenance et l'amélioration des fonctionnalités existantes.<br>
                    J'etais en contact direct avec le client concernant les changements ou correction de l'application. Je pouvais également être appelé à maintenir une seconde application web en rapport avec les produits mais orienté gestion de stock. <br><br>
                    <b>Technologies utilisées :</b><br>
                    - Frontend: AngularJS, HTML, CSS<br>
                    - Backend: Node.js<br>
                    - Système de gestion de base de données: MySQL, MongoDB<br>
                    - Système: Linux, SSH, GitLab<br><br>
                    Je m'occupais également du déploiement de l'application si une mise à jour était nécessaire ou une bug était à résoudre.`
                },
                {
                    img: "/SAP.png",
                    title: "SAP: Stagiaire developpeur cyber sécurité",
                    date: "Mai - Août 2021",
                    modalContent: `Developpement de l'architecture de deploiement d'un projet de cyber sécurité en utilisant des conteneurs Docker orchestrés avec Kubernetes.<br>
                    Cette architecture permettait de déployer, gérer, et mettre à l'échelle les différents composants du projet de manière efficace et automatisée.<br>
                    En plus de ceci, j'ai dû installer un moyen de recupérer les logs de l'application pour pouvoir les envoyer à un système qui permetterai de les centraliser et les gérer plus simplement<br><br>
                    <b>Technologies utilisées :</b><br>
                    - Docker pour la containerisation des applications<br>
                    - Kubernetes pour l'orchestration des conteneurs<br>
                    - Fluentbit pour la récupération des logs
                    - Splunk pour tout centraliser<br><br>
                    Grace à mon travail, l'équipe à pû utiliser mon architecture pour déployer le projet.`
                },
                {
                    img: "/iut_nice.jpg",
                    title: "IUT Nice cote d'azur: Licence DAM",
                    date: "2020 - 2021",
                    modalContent: `Diplome de licence professionnelle en Développement d'Applications Mobiles.
                    Formation axée sur le développement mobile, la conception d'applications, et l'expérience utilisateur.<br><br>
                    <b>Compétences acquises :</b><br>
                    - Développement mobile Android(Kotlin), iOS(Swift)<br>
                    - Conception d'interfaces utilisateur (UI/UX)<br>
                    - Developpement web (React)<br>
                    - Gestion de base de données (SQL, MongoDB)<br><br>
                    Cette formation m'a permis de me spécialiser dans le développement mobile et d'acquérir des compétences pratiques pour concevoir et développer des applications mobiles performantes et conviviales.`
                },
                {
                    img: "/SAP.png",
                    title: "SAP: Stagiaire developpeur IA",
                    date: "Janvier - Février 2020",
                    modalContent: `Developpement d'un prototype d'IA pour détecter la présence de personne via des caméras dans l'entreprise.
                    L'objectif de ce prototype était de l'installer sur le système de caméra du batiment de l'entreprise et de flouter le visage des personnes afin de les anynomiser.<br><br>
                    <b>Technologies utilisées :</b><br>
                    - Python pour le programme de machine learning<br><br>
                    - DarkFlow & Yolo pour la reconnaissance faciale (avec l'utilisation de TensorFlow et OpenCV)<br>
                    Ce prototype a pû être deployé avant la fin de mon stage sur le système de caméra de l'entreprise, et même affiché en temps réel sur un écran dans le hall d'entrée.`
                },
                {
                    img: "/SAP.png",
                    title: "SAP: Stagiaire developpeur cyber sécurité",
                    date: "Mai - Juin 2019",
                    modalContent: `Developpement d'un module prototype pour un projet de cyber sécurité<br>
                    Ce module consistait à analyser les requêtes HTTP entrantes via un reverse-proxy afin de détecter des anomalies potentielles ou des tentatives d'intrusion.<br><br>
                    <b>Technologies utilisées :</b><br>
                    - Node.js pour le developpement du module<br><br>
                    Ce module devait être intégrer à un système plus grand qui consistait à piéger les attaquants en les redirigeant vers des honeypots (systèmes factices destinés à attirer les cyberattaquants).<br>`                    
                },
                {
                    img: "/estienne_dorves.svg",
                    title: "Lycée Estienne d'Orves: BTS SIO",
                    date: "2018 - 2020",
                    modalContent: `Diplome de brevet de technicien supérieur en Services Informatiques aux Organisations, option SLAM (Solutions Logicielles et Applications Métiers). 
                    Formation axée sur le développement web, la gestion de bases de données, et les réseaux informatiques. 
                    Projets réalisés en équipe, stages en entreprise pour une expérience pratique.<br><br>
                    <b>Compétences acquises :</b><br>
                    - Bases de programmation<br>
                    - Développement web (HTML, CSS, JavaScript, PHP)<br>
                    - Developpement logiciel (Python, C#)<br>
                    - Gestion de bases de données (SQL, MySQL)<br>
                    - Administration réseau<br>
                    - Travail en équipe et gestion de projet<br><br>
                    Cette formation m'a permis de développer des compétences techniques solides et une compréhension approfondie des environnements informatiques professionnels.`
                }
            ]
        };
    },
    mounted() {
        window.addEventListener('keydown', this.handleKeydown);
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
        <h1 class="view-title">À propos</h1>
            <div class="timeline">
                <template v-for="(item, idx) in timeline" :key="idx">
                    <div :class="['timeline-item', idx % 2 === 0 ? 'right' : 'left']" @click="openModalIndex = idx">
                        <img :src="item.img" :alt="item.title">
                        <div class="timeline-content">
                            <p>{{ item.title }}</p>
                            <span>{{ item.date }}</span>
                        </div>
                    </div>
                    <Modal :visible="openModalIndex === idx" @close="openModalIndex = null">
                        <h2>{{ item.title }}</h2>
                        <p v-html="item.modalContent"></p>
                    </Modal>
                    <span v-if="idx < timeline.length-1" class="timeline-line"></span>
                </template>
            </div>
    </div>
</template>

<style scoped>
    .timeline {
        width: 80%;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 2vh;
    }
    .timeline-item {
        display: flex;
        justify-content: center;
        width: 80%;
        position: relative;
        cursor: pointer;
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