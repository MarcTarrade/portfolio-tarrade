import { createRouter, createWebHistory } from 'vue-router'
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: () => import('../views/HomeView.vue'),
      meta: {
        title: 'Accueil - Portfolio Marc Tarrade',
        description: 'Bienvenue sur mon portfolio !'
      }
    },
    {
        path: '/about',
        name: 'about',
        component: () => import('../views/About.vue'),
        meta: {
          title: 'À propos - Portfolio Marc Tarrade',
          description: 'En savoir plus sur Marc Tarrade, ingénieur logiciel et expert en cybersécurité.'
        }
    },
    {
        path: '/projects',
        name: 'projects',
        component: () => import('../views/Projects.vue'),
        meta: {
          title: 'Projets - Portfolio Marc Tarrade',
          description: 'Découvrez les projets sur lesquels j\'ai travaillé, mettant en avant mes compétences en développement logiciel et en cybersécurité.'
        }
    },
    {
        path: '/skills',
        name: 'skills',
        component: () => import('../views/Skill.vue'),
        meta: {
          title: 'Compétences - Portfolio Marc Tarrade',
          description: 'Explorez mes compétences techniques et professionnelles, notamment en développement logiciel, cybersécurité, et gestion de projets.'
        }
    },
    {
        path: '/presentation',
        name: 'presentation',
        component: () => import('../views/Presentation.vue'),
        meta: {
          title: 'Présentation - Portfolio Marc Tarrade',
          description: 'Découvrez ma présentation professionnelle et mes réalisations.'
        }
    },
    {
        path: '/contact',
        name: 'contact',
        component: () => import('../views/Contact.vue'),
        meta: {
          title: 'Contact - Portfolio Marc Tarrade',
          description: 'Contactez-moi pour toute question ou opportunité professionnelle.'
        }
    }
  ],
})

export default router
