<script>
import HomeIcon from './icons/HomeIcon.vue';
import PersonIcon from './icons/PersonIcon.vue';
import CompassIcon from './icons/CompassIcon.vue';
import CodeIcon from './icons/CodeIcon.vue';
import MailIcon from './icons/MailIcon.vue';

    export default {
        components: {
            HomeIcon,
            PersonIcon,
            CompassIcon,
            CodeIcon,
            MailIcon
        }
    };
</script>

<template>
    <div class="menu-container">
        <header class="menu">
            <div class="menu-title-container">
                <p class="menu-title">TARRADE Marc</p>
            </div>
            <nav class="menu-item-container">
                <router-link class="menu-item" to="/">
                    <HomeIcon class="menu-icon"/>
                    <p class="menu-link">Accueil</p>
                </router-link>
                <router-link class="menu-item" to="/about">
                    <PersonIcon class="menu-icon"/>
                    <p class="menu-link">A propos</p>
                </router-link>
                <router-link class="menu-item" to="/projects">
                    <CompassIcon class="menu-icon"/>
                    <p class="menu-link">Projets</p>
                </router-link>
                <router-link class="menu-item" to="/skills">
                    <CodeIcon class="menu-icon"/>
                    <p class="menu-link">Compétences</p>
                </router-link>
            </nav>
            <div class="contact-container">
                <button class="contact-btn">
                    <MailIcon class="contact-icon"/>
                    <router-link class="menu-link" to="/contact">Contact</router-link>
                </button>
            </div>
        </header>
    </div>
</template>

<style scoped>
    .menu-container {
        z-index: 1000;
        top: 0;
        position: fixed;
        display: flex;
        justify-content: center;
        width: 100%;
    }
    .menu {
        width: 80vw;
        height: 100px;
        background-color: var(--tertiary-color);
        border-radius: 100px;
        display: flex;
        padding: 0 2%;
        margin-top: 2vh;
    }
    .menu-title-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100px;
        margin-right: 5rem;
    }
    .menu-title {
        font-size: 2rem;
        font-weight: bold;
        color: var(--primary-color);
    }
    .menu-item-container {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        flex-grow: 1;
    }
    .menu-item {
        display: flex;
        align-items: center;
        text-decoration: none;
    }
    .menu-icon {
        width: 32px;
        height: 32px;
        color: var(--text);
        margin-right: 0.5rem;
    }
    .menu-link {
        text-decoration: none;
        color: var(--text);
        font-size: 1.3rem;
        
    }
    .contact-container {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-left: 7rem;
    }
    .contact-btn {
        display: flex;
        align-items: center;
        background-color: var(--secondary-color);
        color: var(--text);
        border: none;
        border-radius: 50px;
        padding: 1.3rem 1.5rem;
        cursor: pointer;
    }
    .contact-icon {
        width: 24px;
        height: 24px;
        margin-right: 0.5rem;
        color: var(--text);
    }

</style>