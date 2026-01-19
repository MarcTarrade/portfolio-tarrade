<template>
    <footer class="footer">
        <div class="left">
            <div class="footer-title">
                © 2026 TARRADE Marc
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
    .social-media a {
        transition: all 0.2s ease;
    }
    .social-media a:hover {
        transform: scale(1.1);
    }
    .link {
        text-decoration: underline;
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
        color: var(--primary-color);
        margin-bottom: 0.5rem;
    }
    .webite-plan hr, .contact-info hr {
        width: 100%;
        border: 1px solid var(--primary-color);
        margin-bottom: 0.5rem;
    }
    .webite-plan .link, .contact-info a {
        color: var(--primary-color);
        text-decoration: underline;
        margin-bottom: 0.5rem;
        transition: color 0.3s ease;
    }
    .webite-plan .link:hover, .contact-info a:hover {
        color: #FFF
    }

    @media screen and (max-width: 768px) {
        .right {
            flex-direction: column;
            align-items: center;
            margin-right: 0;
        }
        .webite-plan, .contact-info {
            align-items: center;
            text-align: center;
        }
    }
    @media screen and (max-width: 425px) {
        .footer {
            flex-direction: column;
            align-items: center;
            padding: 2rem;
            gap: 2rem;
        }
    }
</style>