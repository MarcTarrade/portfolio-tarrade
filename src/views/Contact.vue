<script>
import MailIcon from '@/components/icons/MailIcon.vue';
import PhoneIcon from '@/components/icons/PhoneIcon.vue';

export default {
    name: "Contact",
    components: {
        MailIcon,
        PhoneIcon
    },
};
</script>

<template>
    <div class="menu-margin"></div>
    <div class="wrapper">
        <h1 class="view-title">Contact</h1>
        <div class="contact-container">
            <div class="contact-info">
                <div class="tel">
                    <PhoneIcon class="contact-icon"/>
                    <h2>Téléphone</h2>
                    <p>06.62.18.01.98</p>
                </div>
                <div class="email">
                    <MailIcon class="contact-icon"/>
                    <h2>Adresse email</h2>
                    <p>marctarrade@gmail.com</p>
                </div>
            </div>
            <div class="contact-form">
                <form action="https://formspree.io/f/xwvvkled" method="POST" class="form">
                    <label for="name">Nom:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="5" required></textarea>

                    <button type="submit" class="submit-button">Envoyer</button>
                </form>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .contact-container {
        display: flex;
        justify-content: space-around;
        margin-top: 2rem;
        width: 100%;
        padding: 0 15%;
        margin-bottom: 3rem;
    }
    .contact-info {
        display: flex;
        flex-direction: column;
        justify-content: space-around;
    }
    .contact-icon {
        width: 40px;
        height: 40px;
        color: var(--secondary-color);
        margin-bottom: 1rem;
    }
    .tel h2, .email h2 {
        margin-bottom: 1rem;
        color: var(--secondary-color);
    }
    .contact-form, .tel, .email {
        border: 1px solid var(--primary-color);
        border-radius: 10px;
        padding: 2rem;
        text-align: center;
    }
    .tel, .email {
        padding: 3rem 2rem;
    }
    .contact-form {
        width: 40%;
        padding: 2rem 4rem;
    }
    .contact-form form {
        display: flex;
        flex-direction: column;
    }
    .form label {
        margin-bottom: 0.5rem;
        font-weight: bold;
        text-align: left;
    }
    .form input, .form textarea {
        margin-bottom: 1rem;
        padding: 0.5rem;
        border: 1px solid var(--primary-color);
        border-radius: 5px;
        font-size: 1rem;
    }
    .form textarea {
        resize: vertical;
    }
    .submit-button {
        height: 3rem;
        background-color: var(--secondary-color);
        color: #FFF;
        border: none;
        padding: 0.8rem 3rem;
        margin: 1rem;
        font-size: 1.2rem;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .submit-button:hover {
        background-color: var(--primary-color);
    }
</style>