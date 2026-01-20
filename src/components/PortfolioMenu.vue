<script>
import HomeIcon from './icons/HomeIcon.vue';
import PersonIcon from './icons/PersonIcon.vue';
import CompassIcon from './icons/CompassIcon.vue';
import CodeIcon from './icons/CodeIcon.vue';
import MailIcon from './icons/MailIcon.vue';
import AboutIcon from './icons/AboutIcon.vue';
import MenuIcon from './icons/MenuIcon.vue';
import CloseIcon from './icons/CloseIcon.vue';

    export default {
        components: {
            HomeIcon,
            PersonIcon,
            CompassIcon,
            CodeIcon,
            MailIcon,
            AboutIcon,
            MenuIcon,
            CloseIcon
        },
        data() {
            return {
                isBurgerMenuOpen: false
            };
        },
    };
</script>

<template>
    <div class="menu-container">
        <header class="menu">
            <div class="menu-title-container">
                <h3 class="menu-title">TARRADE Marc</h3>
            </div>
            <nav class="menu-item-container" role="navigation">
                <router-link class="menu-item" to="/">
                    <HomeIcon class="menu-icon"/>
                    <p class="menu-link">Accueil</p>
                </router-link>
                <router-link class="menu-item" to="/presentation">
                    <PersonIcon class="menu-icon"/>
                    <p class="menu-link">Présentation</p>
                </router-link>
                <router-link class="menu-item" to="/about">
                    <AboutIcon class="menu-icon"/>
                    <p class="menu-link">À propos</p>
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
                    <router-link class="contact-link" to="/contact">Contact</router-link>
                </button>
            </div>
            <div class="burger-container">
                <MenuIcon class="burger-icon" @click="isBurgerMenuOpen = !isBurgerMenuOpen"/>
                <div class="burger-menu" :class="{ open: isBurgerMenuOpen }">
                    <router-link class="burger-menu-item" to="/" @click="isBurgerMenuOpen = false">
                        <HomeIcon class="menu-icon"/>
                        <span class="menu-link">Accueil</span>
                    </router-link>
                    <router-link class="burger-menu-item" to="/presentation" @click="isBurgerMenuOpen = false">
                        <PersonIcon class="menu-icon"/>
                        <span class="menu-link">Présentation</span>
                    </router-link>
                    <router-link class="burger-menu-item" to="/about" @click="isBurgerMenuOpen = false">
                        <AboutIcon class="menu-icon"/>
                        <span class="menu-link">À propos</span>
                    </router-link>
                    <router-link class="burger-menu-item" to="/projects" @click="isBurgerMenuOpen = false">
                        <CompassIcon class="menu-icon"/>
                        <span class="menu-link">Projets</span>
                    </router-link>
                    <router-link class="burger-menu-item" to="/skills" @click="isBurgerMenuOpen = false">
                        <CodeIcon class="menu-icon"/>
                        <span class="menu-link">Compétences</span>
                    </router-link>
                    <router-link class="burger-menu-item" to="/contact" @click="isBurgerMenuOpen = false">
                        <MailIcon class="menu-icon"/>
                        <span class="menu-link">Contact</span>
                    </router-link>
                    <button class="close-burger-menu" @click="isBurgerMenuOpen = false" title="closing burger menu">
                        <CloseIcon/>
                    </button>
                </div>
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
        background-color: #555555;
    }
    .menu {
        width: 80vw;
        height: 100px;
        background-color: var(--tertiary-color);
        border-radius: 100px;
        display: flex;
        padding: 0 2%;
        margin-top: 2vh;
        margin-bottom: 2vh;
    }
    .menu-title-container {
        display: flex;
        justify-content: center;
        align-items: center;
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
    .menu-item:hover .menu-link, .menu-item:hover .menu-icon {
        color: #FFF;
    }
    .menu-item .menu-icon {
        width: 32px;
        height: 32px;
        color: var(--primary-color);
        margin-right: 0.5rem;
        transition: color 0.3s ease;
    }
    .menu-item .menu-link {
        text-decoration: none;
        color: var(--primary-color);
        font-size: 1.3rem;
        transition: color 0.3s ease;
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
        padding: 1.3rem 1.7rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .contact-btn:hover {
        background-color: var(--primary-color);
    }
    .contact-icon {
        width: 24px;
        height: 24px;
        margin-right: 0.5rem;
        color: var(--text);
    }
    .contact-link {
        text-decoration: none;
        color: var(--text);
        font-size: 1.2rem;
    }
    
    .burger-container {
        display: none;
        align-items: center;
        justify-content: center;

        margin-right: 2rem;
        cursor: pointer;
    }
    .burger-icon {
        width: 30px;
        height: 30px;
        color: var(--primary-color);
    }
    .burger-menu {
        position: fixed;
        top: 0;
        right: -100%;
        width: 100vw;
        height: 100vh;
        background-color: var(--tertiary-color);
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 1rem;
        z-index: 1001;
        justify-content: space-evenly;
        transition: right 0.3s ease-in-out;
    }
    .burger-menu.open {
        right: 0;
    }
    .burger-menu-item {
        display: flex;
        align-items: center;
        padding: 1rem 0;
        text-decoration: none;
        opacity: 0;
        transform: translateY(20px); /* Start slightly below */
        transition: opacity 0.3s ease, transform 0.3s ease;
    }
    .burger-menu.open .burger-menu-item {
        opacity: 1;
        transform: translateY(0); /* Move to original position */
    }
    .burger-menu-item .menu-icon {
        width: 42px;
        height: 42px;
        color: var(--primary-color);
        margin-right: 0.5rem;
    }
    .burger-menu-item .menu-link {
        text-decoration: none;
        color: var(--primary-color);
        font-size: 2rem;
    }
    .close-burger-menu {
        background: none;
        border: none;
        cursor: pointer;
        position: absolute;
        width: 32px;
        height: 32px;
        top: 1.5rem;
        right: 1.5rem;
        transition: transform 0.3s ease;
    }
    .close-burger-menu:hover {
    transform: rotate(90deg); /* Rotate on hover */
}

    @media screen and (max-width: 1750px) {
        .menu-title-container {
            margin-right: 3rem;
        }
        .menu-title {
            font-size: 1.8rem;
        }
        .contact-container {
            margin-left: 4rem;
        }
        .contact-btn {
            padding: 1.2rem 1.5rem;
        }
        .contact-icon {
            width: 22px;
            height: 22px;
        }
        .contact-link {
            font-size: 1.1rem;
        }
        .menu-item .menu-icon {
            width: 28px;
            height: 28px;
        }
        .menu-item .menu-link {
            font-size: 1.1rem;
        }
    }
    @media screen and (max-width: 1440px) {
        .menu-title-container {
            margin-right: 2rem;
        }
        .menu-title {
            font-size: 1.6rem;
        }
        .contact-container {
            margin-left: 3rem;
        }
        .contact-btn {
            padding: 1rem 1.3rem;
        }
        .contact-icon {
            width: 20px;
            height: 20px;
        }
        .contact-link {
            font-size: 1rem;
        }
        .menu-item .menu-icon {
            width: 24px;
            height: 24px;
        }
        .menu-item .menu-link {
            font-size: 1rem;
        }
    }
    @media screen and (max-width: 1250px) {
        .menu {
            width: 90vw;
        }
        .menu-title-container {
            margin-right: 1rem;
        }
        .menu-title {
            font-size: 1.4rem;
        }
        .contact-container {
            margin-left: 2rem;
        }
        .contact-btn {
            padding: 0.8rem 1.1rem;
        }
        .contact-icon {
            width: 18px;
            height: 18px;
        }
        .contact-link {
            font-size: 0.9rem;
        }
        .menu-item .menu-icon {
            width: 22px;
            height: 22px;
        }
        .menu-item .menu-link {
            font-size: 0.9rem;
        }
    }
    @media screen and (max-width: 950px) {
        .burger-container {
            display: flex;
        }
        .menu-item-container {
            display: none;
        }
        .contact-container {
            display: none;
        }
        .menu {
            justify-content: space-between;
        }
    }
    @media screen and (max-width: 768px) {
        .menu-title-container {
            margin-left: 1rem;
        }
    }
    @media screen and (max-width: 500px) {
        .menu {
            height: 80px;
        }
    }



</style>