<script>
import CalendarIcon from '@/components/icons/CalendarIcon.vue';
import LinkIcon from '@/components/icons/LinkIcon.vue';
import Modal from '@/components/Modal.vue';
import { onMounted } from 'vue';
import { useRoute } from 'vue-router';

export default {
    components: {
        CalendarIcon,
        Modal,
        LinkIcon
    },
    setup() {
        const route = useRoute();
        return { route };
    },
    watch: {
        openModalIndex(newVal) {
            if (newVal == null) {
                this.$router.push({ query: {}});
                return;
            }
            let skill = this.skills[newVal]
            this.$router.push({ query: { skill: skill.slug } });
        }
    },
    data() {
        return {
            openModalIndex: null,
            skills: [
            {
                slug: 'angular',
                name: "Angular & Typescript",
                image: "Angular_logo.svg.png",
                level: "Avancé",
                type: 'technical',
                percentage: 70, 
                definition: "Angular et TypeScript constituent aujourd’hui une combinaison très recherchée dans le développement web professionnel, notamment pour concevoir des applications modernes, structurées et faciles à faire évoluer. Cette compétence me permet de construire des interfaces utilisateur riches, d’organiser efficacement une base de code grâce aux composants, aux services et au typage fort, et de garantir une meilleure maintenabilité sur le long terme. Dans un contexte de projet réel, elle est particulièrement utile pour répondre à des besoins métier complexes tout en assurant une expérience utilisateur fluide, une bonne qualité de code et une collaboration simplifiée au sein d’une équipe de développement. Elle correspond également à une tendance forte du marché, où la robustesse, la performance et la sécurité des applications front-end sont des enjeux majeurs.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Conception et développement d’une application complète avec Angular 18 et TypeScript dans le cadre de mon alternance chez SAP. L’application est fonctionnelle, respecte les bonnes pratiques Angular et peut être déployée avec Docker Compose ou Kubernetes (Kyma). Avec Angular j'ai pû confectionner des interfaces utilisateurs fluides et propres et en même temps pouvoir afficher toutes les données provenant de l'API permattant à l'utilisateur de configurer son système de façon beaucoup plus simple. Dans ce projet, je me suis occupé de la conception et du développement de l’application de bout en bout, tout en la conteneurisant pour un déploiement simplifié avec Docker et en créant les fichiers de configuration nécessaires pour un déploiement sur BTP Kyma (plateforme cloud de SAP)"
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Développement de nouvelles fonctionnalités et correction de bugs d’une application web avec Angular 1, permettant de gérer le catalogue produit d’un client. L’application a été considérablement améliorée suite aux demandes du client : de nouvelles fonctionnalités ont été ajoutées et de nombreux bugs, qui empêchaient une utilisation fluide, ont été corrigés. Je me suis chargé de développer les fonctionnalités demandées par le client, de corriger les bugs connus ainsi que ceux que j’ai identifiés moi-même, et de revoir l’optimisation globale de l’application. Aujourd'hui l'application est beaucoup plus fluide et agréable à utiliser pour le client, de plus elle est beaucoup plus simple à maintenir et à faire évoluer grâce aux bonnes pratiques Angular que j'ai pu mettre en place lors de la refonte de l'application"
                    },
                    {
                        title: "PMT",
                        link: "/projects?project=pmt",
                        description: "Développement d’une application web collaborative avec Angular et TypeScript dans le cadre de mon projet de mastère en ingénierie logicielle. J’ai pu mettre en pratique la conception d’une interface moderne et fonctionnelle, avec une architecture front-end pensée pour être claire, maintenable et adaptée à des besoins métier concrets. Le projet m’a permis de travailler sur la structuration de l’application, l’organisation des vues et des composants, ainsi que sur la création d’une expérience utilisateur fluide et cohérente pour la gestion de projet. ans ce projet, je me suis occupé de la conception et du développement de l’application de bout en bout, tout en la conteneurisant pour un déploiement simplifié avec Docker"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts de base d’Angular, tels que les composants standalone, les services, le routage et les requêtes API REST, ainsi que des notions plus avancées comme les intercepteurs HTTP et les guards pour le routage. Je sais créer des applications complexes intégrant des formulaires, des composants réactifs et des intégrations d’API REST. J'ai un niveau confirmé sur Angular et Typescript. ",
                    my_profile: "Angular est une compétence majeure de mon profil de développeur Full stack. Sa maîtrise me permet de concevoir des interfaces fiables et complexes, et me positionne sur le développement d’applications web avancées. Cette compétence est particulièrement recherchée par les entreprises, ce qui renforce sa valeur dans mon parcours professionnel",
                    speed: "L’apprentissage d’Angular a été rapide pour moi grâce à mes solides bases en JavaScript et aux différents projets qui m’ont permis de développer cette compétence rapidement et efficacement. J'ai également beaucoup appris lors de ma formation à l'ISCOD, notamment sur les bonnes pratiques de développement et la structuration d'une application Angular ainsi que les différents concepts clés du framework",
                    step_back: "Angular est une compétence essentielle dans le domaine du développement web. Pour la maîtriser, il est indispensable de bien comprendre les fondamentaux de JavaScript et TypeScript, ainsi que les concepts clés d’Angular (composants, services, routage...). L’apprentissage est rapide, mais il est crucial de respecter les bonnes pratiques de développement afin que les applications restent maintenables et évolutives sur le long terme"
                },
                evolution: {
                    description: "À moyen terme, je souhaite approfondir ma connaissance des bonnes pratiques de développement Angular, ainsi que de l’internationalisation des applications et du développement de tests unitaires. Je souhaite également renforcer ma capacité à structurer des projets plus complexes, à améliorer la maintenabilité du code et à garantir une meilleure qualité logicielle sur l’ensemble du cycle de vie d’une application. Ces compétences me permettront de progresser à la fois dans mes projets personnels et dans des projets d’entreprise, tout en me donnant une meilleure maîtrise de cette technologie dans des contextes plus exigeants.",
                    next_steps: "Je continue de me former en ligne, en particulier grâce à la documentation officielle d’Angular, avec un focus sur le développement de tests unitaires, la qualité du code et les bonnes pratiques de conception. J’ai également l’intention de poursuivre des formations pratiques pour approfondir des sujets plus avancés et renforcer ma confiance sur des projets plus ambitieux."
                }
            },
            {
                slug: 'nodejs',
                name: "Node.js",
                image: "nodejs_logo.svg",
                level: "Avancé",
                type: 'technical',
                percentage: 80,
                definition: "Node.js est une compétence essentielle dans le développement backend moderne, car elle permet de créer des applications rapides, évolutives et capables de gérer un grand nombre de requêtes simultanées. Grâce à son modèle asynchrone, il est particulièrement adapté à la conception d’API, de services web et d’architectures orientées performance. Dans un contexte professionnel, cette compétence est précieuse pour développer des solutions robustes, sécurisées et compatibles avec des environnements cloud, tout en répondant aux attentes actuelles des entreprises en matière de scalabilité, d’agilité et de qualité de service. Elle me permet également de travailler sur des projets full stack de bout en bout, avec une vision plus complète du cycle de vie d’une application.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Conception et développement d’une application complète avec NodeJS dans le cadre de mon alternance chez SAP. NodeJS a été particulièrement utile pour la création d'API REST permettant d'afficher des données provenant de la base de données ou faire des modifications dans celle-ci et la gestion des requêtes HTTP avec le package ExpressJS ainsi que pour la sécurisation des données ou encore l'intégration de différents package comme keycloak, sequelize, axios... L’application est fonctionnelle, respecte les bonnes pratiques d’ExpressJS et peut être déployée avec Docker Compose ou Kubernetes (Kyma). Dans ce projet, je me suis occupé de la conception et du développement de l’application de bout en bout, tout en la conteneurisant pour un déploiement simplifié avec Docker et en créant les fichiers de configuration nécessaires pour un déploiement sur BTP Kyma (plateforme cloud de SAP)"
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Développement de nouvelles fonctionnalités et correction de bugs d’une application web avec NodeJS, permettant de gérer le catalogue produit d’un client. L’application a été considérablement améliorée suite aux demandes du client : de nouvelles fonctionnalités ont été ajoutées et de nombreux bugs, qui empêchaient une utilisation fluide, ont été corrigés. La sécurité a aussi été renforcée surtout lors de requetes à la base de donénes avec le package de gestion de la base. Je me suis chargé de développer les fonctionnalités demandées par le client, de corriger les bugs connus ainsi que ceux que j’ai identifiés moi-même, et de revoir l’optimisation globale de l’application. Aujourd'hui l'application est toujours fonctionnelle et beaucoup plus rapide pour fournir des données au front-end."
                    }
                ],
                autocritique: {
                    description: "Je maîtrise Node.js ainsi que le langage JavaScript, et des concepts clés tels que la programmation asynchrone, la gestion des événements, la création de serveurs HTTP, la manipulation de fichiers et la sécurité côté serveur. Je suis capable de développer des applications web et des API REST en m’appuyant sur cette compétence, notamment à l’aide du framework ExpressJS. J'ai un niveau plus que confirmé sur Node.js.",
                    my_profile: "Node.js est une compétence majeure de mon profil de développeur full stack. Sa maîtrise me permet de concevoir des applications côté serveur de qualité et sécurisées. Elle valorise également mon positionnement de développeur full stack, capable de concevoir et de maintenir des architectures back-end complètes.",
                    speed: "L’apprentissage de Node.js a été progressif, facilité dans un premier temps par mes connaissances en JavaScript. J’ai ensuite approfondi mes bases à travers les différents projets sur lesquels j’ai travaillé, ce qui m’a permis de découvrir et de maîtriser des concepts plus avancés comme l’asynchrone et la gestion des événements.",
                    step_back: "Node.js est une compétence essentielle dans le domaine du développement web. Il permet de concevoir des applications flexibles et robustes avec une quantité de code maîtrisée, notamment grâce à des packages comme ExpressJS. Une bonne maîtrise de JavaScript est indispensable pour comprendre pleinement les mécanismes de Node.js et exploiter efficacement son potentiel."
                },
                evolution: {
                    description: "À moyen terme, je souhaite approfondir mes connaissances en architecture microservices avec Node.js, tout en consolidant mes bases sur les bonnes pratiques de développement avec des frameworks comme ExpressJS. Je souhaite également continuer à mieux maîtriser la gestion des modules, notamment la différence entre les approches CommonJS et ESM, afin de gagner en rigueur technique et en qualité de conception. Cette progression me permettra d’aborder des projets back-end plus structurés, plus évolutifs et mieux adaptés aux enjeux actuels des applications modernes.",
                    next_steps: "Je continue de me former en ligne, en particulier grâce à la documentation officielle de Node.js, aux mises à jour de l’écosystème et aux tutoriels vidéo disponibles sur des plateformes comme YouTube. Je souhaite aussi renforcer mon apprentissage à travers des projets concrets afin de transformer ces notions théoriques en compétences réellement opérationnelles."
                }
            },
            {
                slug: 'docker',
                name: "Docker",
                image: "docker_logo.png",
                level: "Avancé",
                type: 'technical',
                percentage: 70,
                definition: "Docker est aujourd’hui une compétence majeure dans le développement logiciel moderne, car elle facilite la conteneurisation des applications et garantit une meilleure reproductibilité entre les environnements. Elle permet d’encapsuler une application avec ses dépendances dans un conteneur léger, ce qui simplifie le déploiement, améliore la portabilité et réduit les problèmes liés aux différences entre les machines de développement et les environnements de production. Dans un contexte professionnel, cette compétence est très valorisée, notamment dans des projets orientés cloud, DevOps ou microservices, où la fiabilité, la rapidité de livraison et la maintenance des environnements sont des priorités. Elle me permet aussi de travailler plus sereinement sur des architectures complexes tout en assurant une meilleure traçabilité et une meilleure gestion des déploiements.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Conteneurisation complète de mon projet dans le cadre de mon alternance chez SAP. Tous les services du projet sont dans des images prêtes à être utilisé qui ont été optimisées et sécurisées. Le projet est aussi déployable grâce à docker compose permettant de gérer plusieurs conteneurs en une seule commande. J’ai aussi configuré dans le docker compose : des volumes pour les bases de données, des réseaux pour la communication entre conteneurs et utilisé des variables d’environnement pour configurer mes conteneurs. Egalement j'ai pu pousser mes images Docker sur le registry de Github grâce à une pipeline CI/CD. Aujourd'hui le projet est conteneurisé et peut être déployé sur n'importe quelle machine avec Docker installé. Il est aussi déployable sur BTP Kyma (plateforme cloud de SAP) grâce à la configuration des fichiers de déploiement Kubernetes que j'ai réalisé et aux images disponible sur Githbub registry."
                    },
                    {
                        title: "PMT",
                        link: "/projects?project=pmt",
                        description: "Conteneurisation du front-end et du back-end dans le cadre de mon projet de mastère en ingénierie logicielle. J’ai mis en place des images Docker afin de rendre l’application plus portable, plus simple à déployer et plus facile à reproduire sur différents environnements. Ce travail m’a permis d’appliquer des bonnes pratiques de conteneurisation dans un contexte réel, tout en renforçant la qualité de l’industrialisation du projet et sa préparation à une utilisation plus proche d’un environnement de production. J’ai aussi configuré dans le docker compose : des volumes pour les bases de données, des réseaux pour la communication entre conteneurs et utilisé des variables d’environnement pour configurer mes conteneurs. Egalement j'ai pu pousser mes images Docker sur le registry de Github grâce à une pipeline CI/CD"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts fondamentaux de Docker : création d’images, orchestration avec Docker Compose, gestion des volumes et des réseaux, ainsi que la configuration d’environnements multi-services. Je suis capable de créer des environnements de développement reproductibles, de configurer des applications conteneurisées et d’intégrer la génération automatique d’images Docker au sein de pipelines CI/CD et garantir une utilisation de ces images dans des environnements de production. J'ai un niveau confirmé sur Docker et je suis capable de l'utiliser dans un contexte professionnel",
                    my_profile: "Docker est un outil indispensable dans mon domaine. Il me permet de conteneuriser mes applications afin de les rendre facilement déployables. Cette compétence m’a également permis de renforcer mes connaissances en DevOps et d’aborder plus sereinement des outils comme Kubernetes. Très recherchée par les entreprises, elle constitue un véritable atout pour différencier mon profil et de m'ouvrir à des postes orientés DevOps.",
                    speed: "L’apprentissage de Docker a été complexe au départ, certaines notions étant difficiles à appréhender et à mettre en pratique. J’ai néanmoins progressé de manière structurée, en commençant par des conteneurs simples avant d’évoluer vers des configurations plus complexes. La documentation officielle de Docker, ainsi que la communauté, ont été des ressources clés dans cette montée en compétences. Mes différents projets m'ont permis de mettre en pratique ces notions et de consolider mes connaissances, notamment sur la création d’images optimisées et sécurisées, ainsi que sur la configuration d’environnements multi-conteneurs avec Docker Compose.",
                    step_back: "Docker est une compétence exigeante qui nécessite une bonne compréhension des bases (linux, images, conteneurs, volumes) avant d’aller plus loin. Cette maîtrise est essentielle pour envisager le déploiement d’applications sur des outils comme Kubernetes. Docker Compose est également un outil complémentaire très utile, permettant de gérer efficacement des environnements multi-conteneurs."
                },
                evolution: {
                    description: "À moyen terme, je souhaite approfondir mes connaissances sur le déploiement d’images Docker en production, l’optimisation de leur taille et la sécurisation des images afin d’améliorer encore la fiabilité et la performance des applications. Je veux également renforcer ma compréhension des bonnes pratiques autour des conteneurs, notamment pour des environnements plus complexes et des déploiements plus industriels. Cette progression me permettra de proposer des solutions plus robustes, plus sécurisées et plus adaptées aux exigences du monde professionnel.",
                    next_steps: "Je poursuis ma formation en ligne, notamment à travers la documentation officielle de Docker, mais aussi via des tutoriels écrits et vidéo qui me permettent d’approfondir les bonnes pratiques de conteneurisation et de déploiement. J’aimerais également continuer à expérimenter sur des cas concrets pour mieux intégrer ces notions dans des projets réels."
                }
            },
            {
                slug: 'kubernetes',
                name: "Kubernetes",
                image: "k8s_logo.png",
                level: "Intermédiaire",
                type: 'technical',
                percentage: 60,
                definition: "Kubernetes est une compétence stratégique pour orchestrer des applications conteneurisées dans des environnements professionnels plus complexes, notamment dans un contexte de déploiement cloud. Elle permet de gérer automatiquement la scalabilité, la disponibilité, la résilience et la répartition des ressources, ce qui est essentiel pour garantir un service fiable et continu. Dans le monde actuel, où les entreprises recherchent des infrastructures plus flexibles et plus sûres, cette compétence devient un véritable atout pour concevoir des architectures modernes, performantes et adaptées aux besoins évolutifs des projets. Elle me permet également d’avoir une vision plus complète du déploiement et de la production applicative, au-delà du simple développement.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Déploiement complet de mon projet dans le cadre de mon alternance chez SAP. L’ensemble des services est conteneurisé sous forme d’images Docker et déployé sur SAP BTP Kyma (la plateforme cloud de SAP). J’ai configuré les déploiements des conteneurs, les volumes pour les bases de données, les services pour la communication entre les pods, ainsi que les ConfigMaps et Secrets pour la gestion des variables d’environnement et les variables plus sensibles comme des clés d'API. J'ai aussi crée des configurations pour des composants spécifiques à SAP BTP comme des API Rules pour exposer les services à l'extérieur du cluster. Aujourd'hui le projet est déployable sur SAP BTP et est même disponible en tant que module communautaire grâce à la création d'un operateur Kubernetes qui permet de déployer l'application avec son propre fichier de configuration (custom resource) et qui gère automatiquement le déploiement (pods qui disfonctionnent, redémarrage automatique...)"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts de base de Kubernetes : création de pods et de déploiements, gestion des volumes, des services, des ConfigMaps et des Secrets. Je suis capable de créer et de configurer des environnements de déploiement pour des applications conteneurisées, ainsi que de les déployer sur des plateformes cloud telles que SAP BTP Kyma. J'ai un niveau intermédiaire de maîtrise de cette technologie.",
                    my_profile: "Kubernetes est une compétence complémentaire à Docker, qui m’a permis d’orienter mon profil vers une dimension plus DevOps. Il me permet de déployer des applications conteneurisées dans des environnements cloud. Cette compétence constitue un véritable atout pour les entreprises souhaitant faire évoluer ou étendre leur architecture vers le cloud.",
                    speed: "Tout comme Docker, l’apprentissage de Kubernetes a été exigeant, mais facilité par les similitudes conceptuelles entre les deux outils. J’ai d’abord acquis les bases en déployant de petites applications en local, avant de monter en complexité avec des déploiements en environnement cloud plus contraignant. L'apprentissage de l'opérateur Kubernetes a été en revanche plus complexe, car il nécessite une bonne compréhension des concepts de Kubernetes et de la manière dont les ressources sont gérées dans un cluster.",
                    step_back: "Kubernetes peut être complexe à appréhender, mais il permet d’acquérir des compétences solides en DevOps et en déploiement d’applications. Une bonne maîtrise d’outils préalables comme Docker est indispensable ainsi que des architectures orientés Cloud. Il s’agit néanmoins d’un outil très puissant, particulièrement pertinent dans un contexte où les architectures cloud prennent une place de plus en plus importante."
                },
                evolution: {
                    description: "À moyen terme, mon objectif est d’approfondir mes connaissances sur la sécurisation des architectures Kubernetes, notamment à travers les mécanismes d’autorisations, les rôles et les politiques d’accès, ainsi que sur la protection des routes d’API. Je souhaite également mieux comprendre la gestion de services plus avancés et les bonnes pratiques liées à la résilience, à la surveillance et à la maintenance d’un cluster. Cette évolution me permettra de renforcer mes compétences en déploiement cloud et d’aborder des architectures plus solides, plus sécurisées et plus professionnelles.",
                    next_steps: "Je poursuis ma formation en ligne, principalement via la documentation officielle de Kubernetes, complétée par des tutoriels spécialisés sur la sécurité des applications et les bonnes pratiques d’architecture. Je souhaite aussi continuer à pratiquer sur des environnements de déploiement concrets afin d’asseoir ces compétences de manière plus durable."
                }
            },
            {
                slug: 'vuejs',
                name: "Vue.js",
                image: "Logo-Vuejs.png",
                level: "Intermédiaire",
                type: "technical",
                percentage: 50,
                definition: "Vue.js est un framework particulièrement intéressant pour développer des interfaces utilisateur modernes, réactives et ergonomiques, tout en restant relativement simple à adopter. Cette compétence me permet de créer des applications web dynamiques, d’organiser mon code de manière modulaire et d’améliorer l’expérience utilisateur grâce à une structure claire et efficace. Dans un contexte professionnel, Vue.js est très pertinent pour des projets où la rapidité de mise en œuvre, la qualité visuelle et la facilité de maintenance sont importantes. Il s’inscrit dans une démarche de développement web actuelle, orientée vers des interfaces plus interactives, plus accessibles et plus adaptées aux attentes des utilisateurs.",
                projects: [
                    {
                        title: "Portfolio",
                        link: "/projects?project=portfolio",
                        description: "Conception et développement d’un portfolio dans le cadre de mon mastère en ingénierie logicielle. L’application a été entièrement développée en Vue.js ; le site est performant, optimisé et responsive. Il respecte l’ensemble des critères définis et intègre également des fonctionnalités avancées telles que la navigation fluide, l’affichage dynamique des projets et la gestion des compétences. J’ai conçu et développé le portfolio de A à Z, en m’assurant de la qualité du code, de l’optimisation des performances et de l’expérience utilisateur."
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts de base de Vue.js, tels que les composants, les services et le routage. Je suis capable de créer des applications simples, comme des sites vitrine, d’y intégrer du responsive design ou encore intégrer des formulaires. Il me reste toutefois encore de nombreux aspects à approfondir, notamment l’intégration d’API et la création de composants plus complexes. J'ai un niveau débutant à intermédiaire sur Vue.js et je souhaite continuer à progresser pour atteindre un niveau avancé.",
                    my_profile: "Vue.js est une compétence non négligeable dans mon profil, il est toujours un plus a avoir pour disposer d'un large panel d'option pour créer des interfaces utilisateur modernes. Ce framework me permet de concevoir des interfaces utilisateur efficacement grâce à sa simplicité d’utilisation. Cette compétence étant recherchée sur le marché du travail, il est essentiel d’en maîtriser les bases et d’en approfondir progressivement les concepts avancés",
                    speed: "L’apprentissage de Vue.js a été relativement simple. Grâce à mes connaissances en Angular et en JavaScript, j’ai su m’adapter rapidement à ce framework. Sa courbe d’apprentissage rapide facilite la compréhension et la maîtrise des concepts fondamentaux. Ce framework est accessible, agréable à utiliser et ressemble assez aux autres frameworks disponibles, ce qui m’a permis de progresser rapidement dans la création d’applications web dynamiques et interactives.",
                    step_back: "Vue.js est un framework accessible et agréable à utiliser. Néanmoins, de solides bases en JavaScript restent indispensables, et des connaissances dans d’autres frameworks constituent un réel avantage. Vue.js évoluant rapidement, il est important de se référer régulièrement à la documentation et de suivre les changements entre les versions"
                },
                evolution: {
                    description: "À moyen terme, je souhaite développer davantage cette compétence afin de consolider mes bases et d’approfondir des concepts plus complexes, dans l’objectif de faire de Vue.js une compétence majeure de mon profil. Je souhaite notamment renforcer ma maîtrise de la création de composants plus avancés, de l’intégration d’API et de l’architecture d’applications plus ambitieuses. Cette progression me permettra non seulement d’ajouter un framework supplémentaire à mon parcours, mais aussi d’élargir mes opportunités professionnelles dans un marché du travail qui valorise fortement les compétences front-end modernes.",
                    next_steps: "Je poursuis ma formation en ligne, notamment à travers la documentation officielle de Vue.js, ainsi que des tutoriels écrits et vidéo sur des plateformes comme YouTube. J’aimerais aussi continuer à pratiquer sur des projets personnels plus complets afin de transformer cette compétence en véritable atout de niveau avancé."
                }
            },
            {
                slug: 'php',
                name: "PHP",
                image: "php-logo.png",
                level: "Débutant",
                type: 'technical',
                percentage: 30,
                definition: "PHP reste une compétence pertinente dans le développement web professionnel, notamment pour maintenir, faire évoluer ou moderniser des applications déjà existantes. Ce langage permet de créer des solutions dynamiques, d’interagir avec des bases de données et de générer du contenu web de manière efficace, tout en s’intégrant à de nombreux environnements techniques. Même si de nouveaux outils ont émergé, PHP conserve une forte présence dans de nombreux projets, notamment dans des systèmes plus traditionnels ou des applications métier encore en production. Cette compétence me permet donc d’apporter une valeur ajoutée sur des projets où la continuité technique et la maintenance des applications existantes sont essentielles.",
                projects: [
                    {
                        title: "Auribeau Judo",
                        link: "/projects?project=auribeau-judo",
                        description: "Refonte et développement complet d’un site pour mon ancien club de judo en PHP. J’ai réalisé une refonte intégrale d’un site devenu obsolète, auparavant uniquement développé en HTML et doté de fonctionnalités vieillissantes. J’ai conçu un site plus performant en PHP et ajouté des fonctionnalités telles que la gestion des actualités du club via un back-office pour que les administrateurs puissent facilement mettre à jour le contenu sans avoir à intervenir directement. J'ai pu aussi utiliser des librairies pour pouvoir stocker différentes données (actualités, images...) dans une base de données. Le site est toujours en production et reste consultable et performant à ce jour"
                    }
                ],
                autocritique: {
                    description: "Je maitrise les concepts de base de PHP comme : la connexion à une base de donnée, l’affichage de page avec HTML et la gestion de requête GET, POST… ainsi que la gestion de sessions et d'un formulaire. Je suis capable de créer de simples applications mais il me manque encore beaucoup de connaissance sur cette compétence comme l’utilisation de framework avec PHP ce qui rendrait mes applications plus performantes et plus maintenables. J'ai un niveau débutant sur PHP et je souhaite continuer à progresser pour atteindre un niveau intermédiaire.",
                    my_profile: "PHP reste une compétence complémentaire à mon profil qui me donne une expérience en plus de développement web, ce qui renforce mon profil Fullstack. Cette compétence me permet de de maintenir et d’améliorer des applications plus anciennes ou d'en concevoir de nouvelles. Cette compétence est encore recherché dans le monde du travail et me sera toujours utile pour une meilleure compréhension des langages de programmation côté serveur et pour la maintenance d’applications existantes.",
                    speed: "L’apprentissage de PHP s’est fait progressivement, j’ai d’abord pu m’essayer à PHP lors de mes études puis lors de mon projet Auribeau judo pour me perfectionner. La syntaxe de PHP est parfois différente des langages plus actuel mais reste accessible. La maitrise de PHP m’a toutefois demandé du temps car c'est un langage qui est assez ancien et qui a beaucoup évolué au fil du temps, ce qui peut rendre la compréhension de certaines notions plus complexe.",
                    step_back: "PHP est un langage simple mais certains concepts peuvent être difficile à appréhender, il faut avoir des bases en HTML ainsi que dans la gestion de requêtes HTTP. L’utilisation de framework avec PHP peuvent grandement améliorer l’aisance avec le langage tout comme l’efficacité, la performance ou encore la maintenabilité des applications."
                },
                evolution: {
                    description: "À moyen terme, je souhaite renforcer mes bases en PHP, notamment parce que cette compétence a été moins utilisée récemment, et développer une meilleure compréhension des bonnes pratiques associées à ce langage. Je souhaite également apprendre à utiliser des frameworks PHP plus modernes comme Laravel, afin de mieux appréhender les architectures actuelles et gagner en efficacité sur des projets web plus structurés. Cette progression me permettra d’améliorer ma polyvalence et d’envisager des projets back-end plus complets avec plus de confiance.",
                    next_steps: "Je poursuis ma formation en ligne, notamment à travers la documentation officielle de PHP, ainsi que des tutoriels dédiés à l’utilisation de frameworks comme Laravel. J’aimerais également réinvestir cette compétence dans des projets concrets afin de progresser de manière plus rapide et plus concrète."
                }
            },
            {
                slug: 'autonomie',
                name: "Autonomie",
                image: "autonomie.png",
                level: "Intermédiaire",
                type: 'soft',
                percentage: 60,
                definition: "L’autonomie est l’une des compétences qui me permet d’avancer efficacement sur des projets concrets, même quand les consignes ne sont pas complètement détaillées. Je suis capable de structurer mon travail, définir mes priorités, chercher des solutions par moi-même, anticiper les obstacles et prendre des initiatives quand un blocage apparaît. Sur des sujets techniques comme sur des sujets plus organisationnels, cette compétence se traduit par une vraie capacité à avancer, à maintenir le rythme du projet, à garder une vue d’ensemble et à tenir une progression cohérente sans avoir besoin d’être guidé à chaque étape. Elle me permet aussi de travailler de manière plus sereine, d’assumer une partie de la responsabilité du projet et d’apporter une contribution utile dès que les premières bases sont posées.",

                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Pendant mon alternance chez SAP, j’ai dû mener une partie importante du projet avec un niveau d’autonomie élevé. J’ai organisé le travail au fil des semaines, pris des décisions techniques, réglé des problèmes de configuration, ajusté certaines solutions en fonction des besoins réels et fait évoluer la plateforme sans attendre une validation constante à chaque étape. Cette expérience m’a appris à avancer de manière plus indépendante, à garder une vue d’ensemble sur l’ensemble du périmètre, à identifier rapidement les points sensibles et à résoudre des difficultés concrètes au fur et à mesure."
                    },
                    {
                        title: "Portfolio",
                        link: "/projects?project=portfolio",
                        description: "La réalisation de mon portfolio a demandé une autonomie importante, car j’ai dû piloter l’ensemble du projet de bout en bout. J’ai choisi la structure, défini les contenus, géré les étapes de développement, ajusté les éléments au regard des retours reçus et veillé à ce que l’ensemble reste cohérent d’un point de vue technique et visuel. C’est un exemple concret de la manière dont je peux prendre en charge un projet avec méthode, initiative et une bonne capacité à faire des choix pertinents sans me perdre dans les détails."
                    },
                    {
                        title: "PMT",
                        link: "/projects?project=pmt",
                        description: "Dans le cadre du projet PMT lors de mastère en Ingéniere logicielle, j’ai travaillé de manière autonome sur un projet de bout en bout, depuis la compréhension des besoins jusqu’à la mise en place d’une application fonctionnelle. J’ai participé à la définition des fonctionnalités à partir de user stories, à la conception de l’architecture de l’application, au développement d’une interface Angular et à l’implémentation côté backend avec Spring Boot. J’ai aussi travaillé sur la base de données, les tests automatisés, la documentation et l’industrialisation du projet avec Docker et une chaîne d’intégration continue."
                    }
                ],
                autocritique: {
                    description: "Je pense être capable de travailler en autonomie sur un projet, de progresser à partir de consignes claires et de garder une bonne rigueur dans l’avancement des tâches. J’aime pouvoir prendre la main sur un sujet, analyser un problème, faire des choix utiles, avancer sans perdre de temps et ajuster mon travail lorsque les conditions changent. Cette capacité me permet de garder une progression stable, d’éviter de rester bloqué sur des détails inutiles et de continuer à produire efficacement même dans des contextes parfois incertains.",
                    my_profile: "L’autonomie est une compétence centrale dans mon profil de développeur, car elle me permet d’être efficace, fiable et proactif. Elle me donne la capacité d’assumer des responsabilités, d’agir sans attendre systématiquement une validation, de gérer une partie importante du travail de manière indépendante et d’apporter une vraie valeur dans un contexte professionnel où la réactivité et la prise d’initiative comptent beaucoup.",
                    speed: "Cette compétence s’est construite progressivement au fil de mes expériences. Au début, j’avais besoin de davantage de repères, mais la pratique m’a permis de gagner en assurance, en organisation et en capacité à gérer des sujets plus complexes de manière autonome.",
                    step_back: "Pour moi, l’autonomie ne signifie pas travailler seul sans échange, mais savoir avancer avec méthode, prendre des initiatives, rester aligné avec les objectifs du projet et garder un bon niveau de qualité même quand les conditions ne sont pas parfaitement stabilisées. C’est une compétence indispensable dans le développement, où il faut souvent prendre des décisions techniques, résoudre des problèmes, gérer plusieurs contraintes à la fois et maintenir la qualité du travail sans perdre de vue l’ensemble du contexte."
                },
                evolution: {
                    description: "À moyen terme, je souhaite renforcer mon autonomie en travaillant sur des projets plus ambitieux, où je devrai mieux gérer mon organisation, mes priorités et la qualité de mes livrables. Je souhaite aussi gagner en confiance pour prendre davantage d’initiatives, anticiper les difficultés plus tôt et avancer avec plus de recul dans des situations professionnelles exigeantes.",
                    next_steps: "Je compte poursuivre cette évolution en m’impliquant davantage sur des projets complets, en améliorant ma gestion du temps et en développant ma capacité à mener des missions de bout en bout avec méthode, rigueur et autonomie réelle."
                }
            },
            {
                slug: 'auto-formation',
                name: "Capacité d'auto-formation",
                image: "autoformation.png",
                level: "Avancé",
                type: 'soft',
                percentage: 70,
                definition: "La capacité d’autoformation est l’une des compétences les plus utiles dans un domaine où les technologies changent vite. Je suis capable d’identifier ce qu’il faut apprendre, de chercher les informations utiles, de tester des solutions concrètes, de comparer plusieurs approches et de les intégrer rapidement à mon travail. Sur plusieurs projets, cette aptitude m’a permis d’apprendre de nouvelles notions en peu de temps, de comprendre des outils plus complexes, d’adapter mon approche aux besoins du moment et d’avancer même lorsque je ne connaissais pas encore parfaitement le sujet. Elle me permet aussi de progresser de manière régulière, sans attendre que toutes les réponses soient déjà disponibles.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Au cours de mon alternance chez SAP, j’ai dû apprendre plusieurs technologies nouvelles pour mener le projet à bien. J’ai commencé par lire la documentation, puis j’ai reproduit des exemples concrets, testé des configurations, comparé des approches possibles et adapté les solutions à mes besoins réels. Cette méthode m’a permis d’acquérir rapidement des bases solides sur des outils comme SAP BTP, Angular, Docker ou encore les environnements cloud, tout en développant une vraie capacité à apprendre vite dans un contexte technique exigeant."
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Sur ce projet, j’ai dû appréhender des technologies inconnues pour moi, comme Angular, Node.js ou MongoDB. J’ai donc développé ma capacité à apprendre de manière autonome, à comprendre les concepts clés, à me repérer dans une nouvelle stack, à identifier rapidement les éléments essentiels et à les appliquer au plus près des besoins du projet. Cette expérience m’a montré qu’il est possible d’acquérir des compétences utiles très rapidement si l’on sait s’organiser, se documenter et tester concrètement."
                    }
                ],
                autocritique: {
                    description: "Ma capacité d’autoformation repose surtout sur ma curiosité, ma motivation à comprendre et mon goût pour l’expérimentation. J’ai tendance à chercher des solutions par moi-même, à me documenter sérieusement, à reproduire des exemples concrets, à tester plusieurs pistes et à progresser par la pratique plutôt que par une simple lecture passive des concepts. Cette manière de travailler me permet d’apprendre plus vite et de retenir plus facilement ce qui est vraiment utile dans un contexte réel.",
                    my_profile: "La capacité à s’autoformer est un pilier important de mon parcours. Elle me permet d’adapter mon apprentissage aux besoins du moment, d’acquérir rapidement de nouvelles compétences et de rester à jour dans un domaine où les technologies évoluent sans cesse. C’est aussi une compétence très précieuse pour un profil qui souhaite évoluer vers des postes techniques et innovants.",
                    speed: "Cette compétence s’est développée naturellement au fil de mes expériences. Je n’ai pas toujours eu des repères tout prêts, mais j’ai appris à me former de manière efficace, à structurer mon apprentissage et à transformer rapidement des connaissances théoriques en compétences opérationnelles.",
                    step_back: "Pour moi, l’autoformation ne consiste pas seulement à apprendre de nouvelles choses, mais à savoir s’adapter, rester curieux et intégrer de nouveaux savoirs de façon autonome. Dans un métier aussi évolutif que le développement, c’est une compétence indispensable pour ne pas se figer et continuer à évoluer à long terme."
                },
                evolution: {
                    description: "À moyen terme, je souhaite continuer à renforcer cette compétence en affinant mes méthodes d’apprentissage, en structurant mieux ma veille technologique et en restant attentif aux évolutions du secteur. Je veux également améliorer ma capacité à intégrer rapidement de nouveaux outils et à les appliquer de manière pertinente dans des projets concrets.",
                    next_steps: "Je poursuis mon apprentissage à travers des formations, des ressources techniques et des projets personnels afin de consolider cette compétence et de la rendre encore plus efficace dans mon parcours professionnel."
                }
            },
            {
                slug: 'communication',
                name: "Communication",
                image: "communication.png",
                level: "Intermédiaire",
                type: 'soft',
                percentage: 40,
                definition: "La communication est une compétence essentielle dans un environnement professionnel, car elle me permet de transmettre des idées, des besoins et des solutions de manière claire et adaptée. Elle joue un rôle majeur dans la réussite des projets, que ce soit pour expliquer un choix technique, présenter un travail, partager un état d’avancement, faciliter les échanges au sein d’une équipe ou éviter qu’une information importante soit mal comprise. Dans les situations concrètes, cette compétence se traduit par la capacité à expliquer un sujet complexe simplement, à reformuler une information utile, à donner les bons repères au bon moment et à éviter les malentendus qui ralentissent le travail ou créent de la confusion.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Lors de mon alternance chez SAP, j’ai eu à présenter l’avancement du projet à des profils techniques et non techniques. J’ai dû expliquer des choix de conception, clarifier des enjeux, adapter mon discours selon l’interlocuteur et faire en sorte que chacun puisse comprendre rapidement ce qui était en cours. J’ai aussi rédigé de la documentation pour les futurs développeurs, ce qui m’a permis de travailler la clarté, la structure et la transmission d’informations de manière durable et compréhensible sur le long terme."
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Sur ce projet, la communication a été centrale, aussi bien avec l’équipe interne qu'avec le client. J’ai échangé régulièrement sur l’avancement des tâches, répondu à des besoins changeants, transmis des informations nécessaires à la bonne compréhension du travail réalisé et veillé à ce que les échanges restent clairs même quand les priorités évoluaient. Cette expérience m’a permis de renforcer ma capacité à communiquer de manière précise, professionnelle et adaptée au contexte, ce qui est essentiel dans un environnement de travail collaboratif."
                    }
                ],
                autocritique: {
                    description: "Je m’efforce d’adopter une communication claire, structurée et adaptée à chaque interlocuteur. J’essaie de faire en sorte que mes messages soient compréhensibles, utiles et cohérents, que je parle à un collègue technique, à un client ou à un public moins familier avec les sujets techniques.",
                    my_profile: "La communication occupe une place importante dans mon profil professionnel. Elle me permet de mieux collaborer, d’échanger efficacement avec les autres et de gagner en confiance dans les situations d’échange, qu’elles soient formelles ou informelles. C’est une compétence qui renforce à la fois mon efficacité personnelle et la qualité de mes relations de travail.",
                    speed: "Cette compétence s’est développée progressivement au fil de mes expériences. Au départ, je n’étais pas toujours à l’aise pour prendre la parole ou expliquer des sujets techniques, mais les retours, les échanges et la répétition m’ont permis de gagner en assurance et en clarté.",
                    step_back: "Pour moi, communiquer efficacement ne consiste pas seulement à parler, mais aussi à écouter, à adapter son niveau de langage et à chercher à faire comprendre sans ambiguïté. C’est une compétence qui se construit dans la durée et qui est essentielle dans tous les environnements de travail collaboratif."
                },
                evolution: {
                    description: "À moyen terme, je souhaite continuer à améliorer ma communication en devenant plus à l’aise pour exposer mes idées, présenter mes projets et adapter mon discours selon mon interlocuteur. Je veux aussi renforcer ma capacité à transmettre des informations techniques de manière plus simple, fluide et impactante.",
                    next_steps: "Je souhaite poursuivre cette évolution en prenant davantage la parole lors des présentations, en participant plus activement aux échanges collectifs et en travaillant ma clarté, ma précision et mon aisance à l’oral comme à l’écrit."
                }
            },
            {
                slug: 'relation-client',
                name: "Relation client",
                image: "relation-client.png",
                level: "Intermédiaire",
                type: 'soft',
                percentage: 50,
                definition: "La relation client est une compétence importante car elle me permet de mieux comprendre des besoins parfois complexes, d’écouter activement et de transformer des attentes en solutions concrètes. Elle repose sur une combinaison d’écoute, d’adaptabilité et de sens du service, avec pour objectif de créer une relation de confiance durable. Dans un contexte professionnel, cette compétence se traduit par la capacité à poser les bonnes questions, à reformuler ce qui a été compris, à repérer ce qui est vraiment important dans une demande et à proposer des réponses adaptées à la réalité du besoin, sans perdre de vue le contexte du projet ni les enjeux de chacun.",
                projects: [
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Durant ce projet, j’ai été en contact direct avec le client dans un cadre où les besoins évoluaient régulièrement. J’ai dû écouter attentivement, reformuler les demandes, prendre en compte les retours, ajuster les priorités et faire en sorte que les échanges restent utiles même lorsque les attentes se précisaient au fil du temps. Cette expérience m’a permis de mieux comprendre l’importance de l’écoute active, de la réactivité, de la clarté dans les échanges et du fait qu’une bonne relation client repose autant sur la compréhension du besoin que sur la qualité de la réponse apportée."
                    }
                ],
                autocritique: {
                    description: "J’essaie de développer une relation client professionnelle, attentive et constructive. Je considère qu’il est essentiel d’écouter avec précision, de poser des questions utiles, de reformuler ce qui a été compris et d’adapter mon discours selon le profil de la personne avec laquelle je travaille, qu’elle soit technique ou non technique. Cette attitude me permet de créer un climat de confiance et de rendre les échanges plus pertinents, plus fluides et plus efficaces.",
                    my_profile: "La relation client est une compétence clé de mon profil car elle me permet de mieux comprendre les besoins métier, de créer du lien avec les interlocuteurs et de contribuer à la réussite des projets au-delà du simple aspect technique. Elle me donne aussi davantage de crédibilité dans des contextes où la qualité de l’échange est aussi importante que la qualité du produit livré.",
                    speed: "J’ai développé cette compétence au fil de mes expériences professionnelles, notamment grâce aux échanges réguliers avec des clients et à la nécessité d’adapter mon comportement selon les situations. L’écoute active et la capacité à reformuler les besoins ont été des facteurs essentiels dans cette progression.",
                    step_back: "Maintenir une bonne relation client demande de la transparence, de la réactivité et une réelle volonté de comprendre les enjeux sous-jacents à une demande. Je pense qu’une relation de confiance se construit autant par la qualité de l’échange que par la qualité des solutions proposées, et qu’un bon suivi des échanges peut faire la différence sur la réussite d’un projet à moyen et long terme."
                },
                evolution: {
                    description: "À moyen terme, je souhaite continuer à renforcer cette compétence en approfondissant mon écoute active, en améliorant ma capacité à transformer des besoins parfois flous en solutions concrètes et en devenant encore plus à l’aise dans les échanges avec des clients variés. Je souhaite aussi progresser dans la capacité à anticiper certaines attentes et à proposer des réponses plus pertinentes et plus rassurantes.",
                    next_steps: "Je souhaite poursuivre cette progression en multipliant les situations d’échange avec des clients, en affinant ma compréhension des besoins métiers et en travaillant davantage la clarté, la précision et la qualité de mes propositions."
                }
            }
        ]}
    },
    mounted() {
        window.addEventListener('keydown', this.handleKeydown);

        // Check for query parameter and open the corresponding modal
        const skillSlug = this.route.query.skill;
        if (skillSlug) {
            const skillIndex = this.skills.findIndex(skill => skill.slug === skillSlug);
            if (skillIndex !== -1) {
                this.openModalIndex = skillIndex;
            }
        }
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
        <h1 class="view-title">Mes compétences</h1>
        <div class="skill-list-container">
            <div class="technical">
                <h2>Compétences techniques</h2>
                <div class="skill-list">
                    <template v-for="(skill, idx) in skills.filter(s => s.type === 'technical')" :key="idx">
                        <div class="skill-item" @click="openModalIndex = idx">
                            <div class="top-container">
                                <img :src="skill.image" :alt="skill.name + '-icon'" class="skill-image"/> 
                                <h2 class="skill-name">{{ skill.name }}</h2>
                            </div>
                            <div class="bottom-container">
                                <p class="skill-level">{{ skill.level }}</p>
                                <div class="skill-percentage-container">
                                    <div :style="{width: skill.percentage + '%'}" class="my-percentage"></div>
                                    <div class="rest-percentage"></div>
                                </div>
                            </div>
                        </div>
                        <Modal :visible="openModalIndex == idx" @close="openModalIndex = null">
                            <h2 class="modal-skill-title">{{ skill.name }}</h2>
                            <img :src="skill.image" :alt="skill.name" class="modal-skill-image"/>
                            <h3 class="modal-sub-title">Ma définition:</h3>
                            <p class="modal-text">{{ skill.definition }}</p>
                            <div class="project-container">
                                <h3 class="modal-sub-title">Mes éléments de preuve:</h3>
                                <div class="project" v-for="(project, pIdx) in skill.projects" :key="pIdx">
                                    <router-link class="project-link" :to="project.link">
                                        <b>{{ project.title }}</b>
                                    </router-link>
                                    <p class="modal-text">{{ project.description }}</p>
                                    <div class="project-link-container">
                                        <router-link :to="project.link">
                                            <LinkIcon/>
                                            <span class="link-name">{{ project.title }}</span>
                                        </router-link>
                                    </div>
                                </div>
                            </div>
                            <h3 class="modal-sub-title">Mon auto-critique:</h3>
                            <p class="modal-text">{{ skill.autocritique.description }}</p>
                            <h4 class="modal-third-title">Place dans mon profil</h4>
                            <p class="modal-text">{{ skill.autocritique.my_profile }}</p>
                            <h4 class="modal-third-title">Vitesse d'acquisition</h4>
                            <p class="modal-text">{{ skill.autocritique.speed }}</p>
                            <h4 class="modal-third-title">Mon recul sur cette compétence</h4>
                            <p class="modal-text">{{ skill.autocritique.step_back }}</p>
                            <template v-if="skill.evolution">
                                <h3 class="modal-sub-title">Mon évolution dans cette compétence:</h3>
                                <p class="modal-text">{{ skill.evolution.description }}</p>
                                <h4 class="modal-third-title">Formation en cours / à venir</h4>
                                <p class="modal-text">{{ skill.evolution.next_steps }}</p>
                            </template>
                        </Modal>
                    </template>
                </div>
            </div>
            <div class="soft">
                <h2>Compétences non techniques</h2>
                <div class="skill-list">
                    <template v-for="(skill, idx) in skills.filter(s => s.type === 'soft')" :key="idx">
                        <div class="skill-item" @click="openModalIndex = idx+6">
                            <div class="top-container">
                                <img :src="skill.image" :alt="skill.name + '-icon'" class="skill-image"/>
                                <h2 class="skill-name">{{ skill.name }}</h2>
                            </div>
                            <div class="bottom-container">
                                <p class="skill-level">{{ skill.level }}</p>
                                <div class="skill-percentage-container">
                                    <div :style="{width: skill.percentage + '%'}" class="my-percentage"></div>
                                    <div class="rest-percentage"></div>
                                </div>
                            </div>
                        </div>
                        <Modal :visible="openModalIndex == idx+6" @close="openModalIndex = null">
                            <h2 class="modal-skill-title">{{ skill.name }}</h2>
                            <img :src="skill.image" :alt="skill.name" class="modal-skill-image"/>
                            <h3 class="modal-sub-title">Ma définition:</h3>
                            <p class="modal-text">{{ skill.definition }}</p>
                            <div class="project-container">
                                <h3 class="modal-sub-title">Mes éléments de preuve:</h3>
                                <div class="project" v-for="(project, pIdx) in skill.projects" :key="pIdx">
                                    <router-link class="project-link" :to="project.link">
                                        <b>{{ project.title }}</b>
                                    </router-link>
                                    <p class="modal-text">{{ project.description }}</p>
                                    <div class="project-link-container">
                                        <router-link :to="project.link">
                                            <LinkIcon/>
                                            <span class="link-name">{{ project.title }}</span>
                                        </router-link>
                                    </div>
                                </div>
                            </div>
                            <h3 class="modal-sub-title">Mon auto-critique:</h3>
                            <p class="modal-text">{{ skill.autocritique.description }}</p>
                            <h4 class="modal-third-title">Place dans mon profil</h4>
                            <p class="modal-text">{{ skill.autocritique.my_profile }}</p>
                            <h4 class="modal-third-title">Vitesse d'acquisition</h4>
                            <p class="modal-text">{{ skill.autocritique.speed }}</p>
                            <h4 class="modal-third-title">Mon recul sur cette compétence</h4>
                            <p class="modal-text">{{ skill.autocritique.step_back }}</p>
                            <template v-if="skill.evolution">
                                <h3 class="modal-sub-title">Mon évolution dans cette compétence:</h3>
                                <p class="modal-text">{{ skill.evolution.description }}</p>
                                <h4 class="modal-third-title">Formation en cours / à venir</h4>
                                <p class="modal-text">{{ skill.evolution.next_steps }}</p>
                            </template>
                        </Modal>
                    </template>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .skill-list-container {
        display: flex;
        justify-content: space-between;
        margin-bottom: 4rem;
    }
    .technical, .soft {
        margin-top: 1rem;
        width: 48%;
        text-align: center;
    }
    .skill-list {
        display: flex;
        flex-direction: row;
        margin: 0 4%;
        width: 92%;
        flex-wrap: wrap;
        justify-content: center;
    }

    .skill-item {
        border: 1px solid #ccc;
        padding: 0.5rem 1rem;
        border-radius: 8px;
        width: 14rem;
        margin: 1rem;
        height: 20rem;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        cursor: pointer;
        transition: all 0.3s ease;
    }
    .skill-item:hover {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transform: translateY(-4px);
    }

    .skill-image {
        max-width: 100%;
        height: 15vh;
        border-radius: 4px;
        display: block;
        margin: 0 auto;
        object-fit: contain;
    }

    .skill-name {
        margin: 0.5rem 0;
        color: var(--secondary-color);
        text-align: center;
    }
    .skill-level {
        text-align: center;
        margin-bottom: 1rem;
        color: var(--secondary-color);
        font-weight: bold;
    }

    .skill-percentage-container {
        display: flex;
        height: 12px;
        overflow: hidden;
        margin-bottom: 1rem;
    }
    .my-percentage {
        background-color: var(--secondary-color);
        height: 100%;
        border-radius: 99px;
    }
    .rest-percentage {
        background-color: var(--tertiary-color);
        height: 100%;
        border-radius: 99px;
        flex-grow: 1;
        margin-left: 1%;
    }
    .modal-skill-title {
        margin-bottom: 1rem;
        color: var(--secondary-color);
        text-align: center;
    }
    .modal-skill-image {
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
    .project .project-link {
        text-decoration: none;
        color: var(--tertiary-color);
    }
    .project .project-link b {
        margin-bottom: 0.4rem;
    }
    .project .project-link:hover {
        text-decoration: underline;
    }
    .modal-third-title {
        margin-top: 1.4rem;
        margin-bottom: 0.5rem;
        color: var(--tertiary-color);
    }
    .project-link-container {
        margin-top: 0.6rem;
        margin-bottom: 0.8rem;
        border: 1px solid var(--sub-text);
        color: #000;
        border-radius: 99px;
        width: fit-content;
        padding: 0.2rem 0.8rem;
        transition: 0.3s ease;
    }
    .project-link-container a {
        text-decoration: none;
        color: currentColor;
    }
    .project-link-container:hover {
        background-color: var(--tertiary-color);
        cursor: pointer;
        color: #FFF;
    }

    @media screen and (max-width: 1900px){
        .skill-item {
            height: 15rem;
        }
        .skill-name {
            font-size: 1.2rem;
        }
        .skill-image {
            height: 10vh;
        }
    }
    @media screen and (max-width: 900px) {
        .skill-list-container {
            flex-direction: column;
            align-items: center;
        }
        .technical, .soft {
            width: 100%;
        }
    }
    @media screen and (max-width: 425px) {
        .skill-item {
            width: 7rem;
            height: 11rem;
        }
        .skill-name {
            hyphens: auto;
            font-size: 1rem;
        }
        .skill-image {
            height: 8vh;
        }
        .skill-level {
            font-size: 0.8rem;
            margin-bottom: 0.6rem;
        }
        .skill-percentage-container {
            margin-bottom: 0.6rem;
        }
    }
</style>