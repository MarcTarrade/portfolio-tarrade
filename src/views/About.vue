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
                    modalContent: "Details about SAP Alternant DevOps cyber sécurité..."
                },
                {
                    img: "/iscod.png",
                    title: "Iscod: Mastère Expert en Ingénierie du Logiciel",
                    date: "2024 - 2026",
                    modalContent: "Details about Iscod Mastère..."
                },
                {
                    img: "/nextsourcia.jpg",
                    title: "NextSourcia: Developpeur FullStack",
                    date: "2021 - 2022",
                    modalContent: "Details about NextSourcia..."
                },
                {
                    img: "/SAP.png",
                    title: "SAP: Stagiaire developpeur cyber sécurité",
                    date: "2021",
                    modalContent: "Details about SAP Stagiaire..."
                },
                {
                    img: "/iut_nice.jpg",
                    title: "IUT Nice cote d'azur: Licence DAM",
                    date: "2020 - 2021",
                    modalContent: "Details about IUT Nice..."
                },
                {
                    img: "/SAP.png",
                    title: "SAP: Stagiaire developpeur IA",
                    date: "2020",
                    modalContent: "Details about SAP IA..."
                },
                {
                    img: "/SAP.png",
                    title: "SAP: Stagiaire developpeur cyber sécurité",
                    date: "2020 - 2021",
                    modalContent: "Details about SAP Stagiaire..."
                },
                {
                    img: "/estienne_dorves.svg",
                    title: "Lycée Estienne d'Orves: BTS SIO",
                    date: "2024 - 2026",
                    modalContent: "Details about BTS SIO..."
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
                    <div class="timeline-item right" @click="openModalIndex = idx">
                        <img :src="item.img" :alt="item.title">
                        <div class="timeline-content">
                            <p>{{ item.title }}</p>
                            <span>{{ item.date }}</span>
                        </div>
                    </div>
                    <Modal :visible="openModalIndex === idx" @close="openModalIndex = null">
                        <h2>{{ item.title }}</h2>
                        <p>{{ item.modalContent }}</p>
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