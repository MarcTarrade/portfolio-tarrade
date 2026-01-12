<script>
import AboutShort from '@/components/About-short.vue';
import Modal from '@/components/Modal.vue';
import CalendarIcon from '@/components/icons/CalendarIcon.vue';
export default {
    components: {
        AboutShort,
        Modal,
        CalendarIcon
    },
    data() {
        return {
            openModalIndex: null,
            timeline: [
                {
                    img: "/SAP.png",
                    title: "Développeur en cyber sécurité",
                    place: "SAP",
                    type: "experience",
                    date: "Février 2024 - Mars 2026",
                    responsibility: "Développeur DevSecOps",
                    status: 'Alternant',
                    details: [
                        "Apprentissage des technologies utilisés",
                        "Amélioration et maintenance de l’application existante",
                        "Participation à un Threat Modeling",
                        "Conception de l’architecture de la solution",
                        "Développement de l’application de gestion de la solution",
                        "Conteneurisation et configuration pour un déploiement dans le cloud",
                        "Documentation des API de l’application",
                        "Intégration d’une pipeline CI/CD depuis Github actions"
                    ],
                    projects: [
                        {
                            name: "Cloud Active Defense",
                            link: "/projects?project=cloud-active-defense"
                        }
                    ],
                    skills: [
                        {
                            name: "NodeJS",
                            image: "Node.js_logo_vert.png",
                            link: "/skills?skill=nodejs"
                        },
                        {
                            name: "Angular",
                            image: "Angular_logo.svg.png",
                            link: "/skills?skill=angular"
                        },
                        {
                            name: "Docker",
                            image: "docker_logo.png",
                            link: "/skills?skill=docker"
                        },
                        {
                            name: "Kubernetes",
                            image: "k8s_logo.png",
                            link: "/skills?skill=kubernetes"
                        },
                        {
                            name: "Communication",
                            image: "communication.png",
                            link: "/skills?skill=communication"
                        },
                        {
                            name: "Capacité d'autoformation",
                            image: "autoformation.png",
                            link: "/skills?skill=auto-formation"
                        },
                        {
                            name: "Autonomie",
                            image: "autonomie.png",
                            link: "/skills?skill=autonomie"
                        }
                    ],
                },
                {
                    img: "/iscod.png",
                    title: "Mastère Expert en Ingénierie du Logiciel",
                    place: "ISCOD",
                    type: "formation",
                    date: "Février 2024 - Mars 2026",
                    description: "L'Institut Supérieur de Conception et de Développement (ISCOD) est un établissement spécialisé dans la formation d'experts en ingénierie logicielle. La pédagogie privilégie l'approche pratique avec des projets concrets et un accompagnement personnalisé pour développer l'expertise technique et les compétences humaines essentielles au métier d'ingénieur logiciel",
                    skills: [
                        {
                            name: "Angular",
                            image: "Angular_logo.svg.png",
                            link: "/skills?skill=angular"
                        },
                        {
                            name: "Docker",
                            image: "docker_logo.png",
                            link: "/skills?skill=docker"
                        },
                        {
                            name: "Kubernetes",
                            image: "k8s_logo.png",
                            link: "/skills?skill=kubernetes"
                        },
                        {
                            name: "Communication",
                            image: "communication.png",
                            link: "/skills?skill=communication"
                        },
                    ]
                },
                {
                    img: "/nextsourcia.jpg",
                    title: "Developpeur Web",
                    date: "Octobre 2021 - Septembre 2022",
                    place: "NextSourcia",
                    type: "experience",
                    responsibility: "Developpeur full-stack",
                    status: 'CDI',
                    details: [
                        "Maintenance d’une application web",
                        "Développement de nouvelles fonctionnalités",
                        "Correction de bug" ,
                        "Réunion et appel avec le client",
                        "Utilisation d’API d’entreprise externes"
                    ],
                    projects: [
                        {
                            name: "DataHub",
                            link: "/projects?project=datahub"
                        }
                    ],
                    skills: [
                        {
                            name: "Angular",
                            image: "Angular_logo.svg.png",
                            link: "/skills?skill=angular"
                        },
                        {
                            name: "NodeJS",
                            image: "Node.js_logo_vert.png",
                            link: "/skills?skill=nodejs"
                        },
                        {
                            name: "Communication",
                            image: "communication.png",
                            link: "/skills?skill=communication"
                        },
                        {
                            name: "Capacité d'autoformation",
                            image: "autoformation.png",
                            link: "/skills?skill=auto-formation"
                        },
                        {
                            name: "Relation client",
                            image: "relation-client.png",
                            link: "/skills?skill=relation-client"
                        }
                    ]
                },
                {
                    img: "/SAP.png",
                    title: "Developpeur cyber sécurité",
                    date: "Mai - Août 2021",
                    place: "SAP",
                    type: "experience",
                    responsibility: "Developpeur DevOps",
                    status: 'Stage',
                    details: [
                        "Configuration de déploiement de l’application sur Kubernetes",
                        "Intégration d’une pipeline de logs pour récupérer les alertes",
                        "Installation d’une application de consultation et de centralisation des logs"
                    ],
                    skills: [
                        {
                            name: "Docker",
                            image: "docker_logo.png",
                            link: "/skills?skill=docker"
                        },
                        {
                            name: "Kubernetes",
                            image: "k8s_logo.png",
                            link: "/skills?skill=kubernetes"
                        }
                    ]
                },
                {
                    img: "/iut_nice.jpg",
                    title: "Licence Développement d’applications mobiles",
                    date: "2020 - 2021",
                    place: "IUT Nice Cote d'Azur",
                    type: "formation",
                    description: "L’IUT Nice Côte d’Azur, rattaché à l’Université Côte d’Azur, propose des formations professionnalisantes orientées vers une insertion rapide dans le monde du travail, en combinant enseignements théoriques, projets concrets et liens étroits avec les entreprises. La Licence Professionnelle DAM (Développement d’Applications Mobiles) s’inscrit pleinement dans cette logique : elle forme des développeurs capables de concevoir, développer et maintenir des applications mobiles, en maîtrisant les technologies, les bonnes pratiques de développement et le cycle de vie complet d’une application. Axée sur la pratique, les projets et l’expérience en entreprise, cette formation permet d’acquérir des compétences directement exploitables sur le marché du travail",
                    skills: [
                        {
                            name: "NodeJS",
                            image: "Node.js_logo_vert.png",
                            link: "/skills?skill=nodejs"
                        },
                        {
                            name: "Communication",
                            image: "communication.png",
                            link: "/skills?skill=communication"
                        },
                        {
                            name: "Docker",
                            image: "docker_logo.png",
                            link: "/skills?skill=docker"
                        }
                    ]
                },
                {
                    img: "/SAP.png",
                    title: "Developpeur IA",
                    date: "Janvier 2020 - Février 2020",
                    place: "SAP",
                    type: "experience",
                    responsibility: "Developpeur machine learning",
                    status: 'Stage',
                    details: [
                        "Apprentissage des technologies de machine learning",
                        "Developpement d’un script de machine learning detectant des objets sur une image",
                        "Adaptation de ce script en application pour détecter sur une vidéo",
                        "Déploiement de l’application sur le réseau de caméra de l’entreprise"
                    ]
                },
                {
                    img: "/SAP.png",
                    title: "Developpeur cyber sécurité",
                    date: "Mai 2019 - Juin 2019",
                    place: "SAP",
                    type: "experience",
                    responsibility: "Developpeur",
                    status: 'Stage',
                    details: [
                        "Developpement d’un module d’analyse de requête http",
                        "Participation à des réunions d’équipe"
                    ],
                    skills: [
                        {
                            name: "NodeJS",
                            image: "Node.js_logo_vert.png",
                            link: "/skills?skill=nodejs"
                        }
                    ]
                },
                {
                    img: "/estienne_dorves.svg",
                    title: "Lycée Estienne d'Orves: BTS SIO",
                    date: "2018 - 2020",
                    place: "Lycée Honoré Estienne d'Orves",
                    type: "formation",
                    description: "Le lycée Honoré d’Estienne d’Orves à Nice propose le BTS Services Informatiques aux Organisations (SIO), une formation Bac + 2 visant à former des techniciens capables de concevoir, déployer et maintenir des solutions informatiques adaptées aux besoins des entreprises. Le BTS SIO offre deux spécialisations, SLAM (développement d’applications) et SISR (systèmes et réseaux), et s’appuie sur un enseignement mêlant théorie, projets pratiques et stages en entreprise afin de préparer efficacement à l’insertion professionnelle ou à la poursuite d’études",
                    skills: [
                        {
                            name: "PHP",
                            image: "php-logo.png",
                            link: "/skills?skill=php"
                        },
                        {
                            name: "NodeJS",
                            image: "Node.js_logo_vert.png",
                            link: "/skills?skill=nodejs"
                        },
                        {
                            name: "Communication",
                            image: "communication.png",
                            link: "/skills?skill=communication"
                        }
                    ]
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
                        <img :src="'/portfolio-tarrade/' + item.img" :alt="item.title">
                        <div class="timeline-content">
                            <h2>{{ item.title }}</h2>
                            <span>{{ item.place }}</span>
                            <div class="project-date-container">
                                <CalendarIcon/>
                                <p class="project-date">{{ item.date }}</p>
                            </div>
                        </div>
                    </div>
                    <Modal :visible="openModalIndex === idx" @close="openModalIndex = null">
                        <h2 class="experience-title">{{ item.title }} - {{ item.place }}</h2>
                        <div class="project-date-container">
                            <CalendarIcon/>
                            <p class="project-date">{{ item.date }}</p>
                        </div>
                        <div class="experience" v-if="item.type == 'experience'">
                            <div class="modal-content">
                                <div class="horizontally">
                                    <label>Responsabilité:</label>
                                    <p class="responsability">{{ item.responsibility }}</p>
                                </div>
                                <div class="horizontally">
                                    <label>Statut:</label>
                                    <p class="status">{{ item.status }}</p>
                                </div>
                            </div>
                            <div class="missions-container">
                                <h3 class="missions">Détails des missions:</h3>
                                <ul>
                                    <li v-for="(detail, dIdx) in item.details" :key="dIdx">{{ detail }}</li>
                                </ul>
                            </div>
                            <div class="project-container" v-if="item.projects && item.projects.length">
                                <h3 class="projects">Projets liés:</h3>
                                <ul>
                                    <li v-for="(project, pIdx) in item.projects" :key="pIdx">
                                        <router-link class="project-link" :to="project.link">{{ project.name }}</router-link>
                                    </li>
                                </ul>
                            </div>
                            <div class="skill-container" v-if="item.skills && item.skills.length">
                                <h3 class="skills">Compétences:</h3>
                                <div class="skills-container">
                                    <router-link v-for="(skill, sIdx) in item.skills" :key="sIdx" :to="skill.link" class="skill-item">
                                        <img :src="'/portfolio-tarrade/' + skill.image" :alt="skill.name" class="skill-image">
                                        <p class="skill-text">{{ skill.name }}</p>
                                    </router-link>
                                </div>
                            </div>
                        </div>
                        <div class="formation" v-else-if="item.type == 'formation'">
                            <div class="modal-content">
                                <h3 class="description">À propos:</h3>
                                <p class="formation-description">{{ item.description }}</p>
                            </div>
                            <div class="skill-container" v-if="item.skills && item.skills.length">
                                <h3 class="skills">Compétences acquises:</h3>
                                <div class="skills-container">
                                    <router-link v-for="(skill, sIdx) in item.skills" :key="sIdx" :to="skill.link" class="skill-item">
                                        <img :src="'/portfolio-tarrade/' + skill.image" :alt="skill.name" class="skill-image">
                                        <p class="skill-text">{{ skill.name }}</p>
                                    </router-link>
                                </div>
                            </div>
                        </div>
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
        display: flex;
        flex-direction: column;
        align-items: flex-end;
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
    .timeline-content h2 {
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
    .modal-content {
        margin-top: 1rem;
    }
    .horizontally {
        display: flex;
        align-items: center;
        margin-bottom: 0.5rem;
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
    .skill-item:hover {
        background-color: var(--sub-text);
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
    .experience-title {
        margin-bottom: 0.5rem;
        color: var(--secondary-color);
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
    .experience label, .formation label {
        font-weight: bold;
        margin-right: 0.5rem;
        color: var(--secondary-color);
    }
    .missions-container, .project-container, .skill-container {
        margin-top: 1.4rem;
    }
    .missions-container .missions, .project-container .projects, .skill-container .skills {
        color: var(--secondary-color);
        margin-bottom: 0.6rem;
    }
    .missions-container ul, .project-container ul {
        padding-left: 1.2rem;
    }
    .missions-container li {
        margin-bottom: 0.3rem;
    }
    .project-link {
        text-decoration: none;
        color: var(--tertiary-color);
    }
    .project-link:hover {
        text-decoration: underline;
    }
    .modal-content .description {
        margin-bottom: 1rem;
        color: var(--secondary-color);
    }
</style>