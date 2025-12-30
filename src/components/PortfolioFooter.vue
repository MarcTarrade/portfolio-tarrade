<template>
    <footer class="footer">
        <div class="left">
            <div class="footer-title">
                © 2025 TARRADE Marc
            </div>
            <div class="social-media">
                <a href="" class="link"> 
                    <img src="/github.svg" alt="github">
                </a>
                <a href="" class="link">
                    <img src="/linkedin.svg" alt="linkedin">
                </a>
            </div>
        </div>
        <div class="right">
            <div class="webite-plan">
                <p>Plan du site</p>
                <hr>
                <router-link to="/" class="link">Accueil</router-link>
                <router-link to="/presentation" class="link">Présentation</router-link>
                <router-link to="/about" class="link">A propos</router-link>
                <router-link to="/projects" class="link">Projets</router-link>
                <router-link to="/skills" class="link">Compétences</router-link>
            </div>
            <div class="contact-info">
                <p>Contact</p>
                <hr>
                <a href="mailto:marctarrade@gmail.com">marctarrade@gmail.com</a>
                <p>06.62.18.01.98</p>
            </div>
        </div>
    </footer>
</template>

<style scoped>
    .footer {
        width: 100%;
        height: 20vh;
        background-color: var(--tertiary-color);
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 3rem;
    }
    .left {
        display: flex;
        align-items: center;
        flex-direction: column;
    }
    .footer-title {
        font-size: 1.7rem;
        color: var(--primary-color);
        font-weight: bold;
    }
    .social-media {
        display: flex;
        gap: 1rem;
        padding-top: 1rem;
    }
    .link {
        text-decoration: none;
        color: var(--text);
    }
    .link img {
        width: 24px;
        height: 24px;
    }
    .right {
        display: flex;
        flex-direction: row;
        align-items: flex-end;
        height: 100%;
        margin-right: 4rem;
    }
    .webite-plan, .contact-info {
        padding: 1rem 2rem;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: start;
    }
    .webite-plan p, .contact-info p {
        font-size: 1.2rem;
        color: var(--text);
        margin-bottom: 0.5rem;
    }
    .webite-plan hr, .contact-info hr {
        width: 100%;
        height: 1px;
        background-color: var(--text);
        margin-bottom: 0.5rem;
    }
    .webite-plan .link, .contact-info a {
        color: var(--text);
        text-decoration: none;
        margin-bottom: 0.5rem;
    }
</style>