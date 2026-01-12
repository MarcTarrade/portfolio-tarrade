<script>
import CalendarIcon from '@/components/icons/CalendarIcon.vue';
import Modal from '@/components/Modal.vue';

export default {
    components: {
        CalendarIcon,
        Modal
    },
    data() {
        return {
            openModalIndex: null,
            skills: [
            {
                name: "Angular & Typescript",
                image: "Angular_logo.svg.png",
                level: "Avancé",
                type: 'technical',
                percentage: 70,
                definition: "Angular est un framework front-end moderne, basé sur TypeScript, permettant de développer des applications web dynamiques et modulaires. Dans un contexte professionnel, maîtriser Angular et TypeScript signifie créer des interfaces performantes, maintenables et sécurisées, tout en facilitant la collaboration au sein d’équipes de développement.Actuellement, Angular et TypeScript sont des compétences très recherchées pour garantir performance, sécurité et évolutivité des projets front-end",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Conception et développement d’une application complète avec Angular 18 et TypeScript dans le cadre de mon alternance chez SAP. L’application est fonctionnelle, respecte les bonnes pratiques Angular et peut être déployée avec Docker Compose ou Kubernetes (Kyma). Dans ce projet, je me suis occupé de la conception et du développement de l’application de bout en bout, tout en la conteneurisant pour un déploiement simplifié avec Docker et en créant les fichiers de configuration nécessaires pour un déploiement sur BTP Kyma (plateforme cloud de SAP)"
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Développement de nouvelles fonctionnalités et correction de bugs d’une application web avec Angular 1, permettant de gérer le catalogue produit d’un client. L’application a été considérablement améliorée suite aux demandes du client : de nouvelles fonctionnalités ont été ajoutées et de nombreux bugs, qui empêchaient une utilisation fluide, ont été corrigés. Je me suis chargé de développer les fonctionnalités demandées par le client, de corriger les bugs connus ainsi que ceux que j’ai identifiés moi-même, et de revoir l’optimisation globale de l’application"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts de base d’Angular, tels que les composants standalone, les services, le routage et les requêtes API REST, ainsi que des notions plus avancées comme les intercepteurs HTTP et les guards pour le routage. Je sais créer des applications complexes intégrant des formulaires, des composants réactifs et des intégrations d’API REST",
                    my_profile: "Angular est une compétence majeure de mon profil de développeur full stack. Sa maîtrise me permet de concevoir des interfaces fiables et complexes, et me positionne sur le développement d’applications web avancées. Cette compétence est particulièrement recherchée par les entreprises, ce qui renforce sa valeur dans mon parcours professionnel",
                    speed: "L’apprentissage d’Angular a été rapide pour moi grâce à mes solides bases en JavaScript et aux différents projets qui m’ont permis de développer cette compétence rapidement et efficacement",
                    step_back: "Angular est une compétence essentielle dans le domaine du développement web. Pour la maîtriser, il est indispensable de bien comprendre les fondamentaux de JavaScript et TypeScript, ainsi que les concepts clés d’Angular (composants, services, routage). L’apprentissage est rapide, mais il est crucial de respecter les bonnes pratiques de développement afin que les applications restent maintenables et évolutives sur le long terme"
                },
                evolution: {
                    description: "À moyen terme, je souhaite approfondir ma connaissance des bonnes pratiques de développement Angular, ainsi que de l’internationalisation des applications et du développement de tests unitaires. Ces compétences me permettront de progresser tant dans mes projets personnels que dans les projets d’entreprise, et de proposer une maîtrise plus complète de cette technologie",
                    next_steps: "Je continue de me former en ligne, en particulier grâce à la documentation officielle d’Angular, avec un focus sur le développement de tests unitaires"
                }
            },
            {
                name: "Node.js",
                image: "nodejs_logo.svg",
                level: "Avancé",
                type: 'technical',
                percentage: 80,
                definition: "Node.js est un environnement d’exécution JavaScript côté serveur. Il permet de développer des applications performantes et scalables, notamment des API et des services web, en utilisant un modèle asynchrone et événementiel. Dans un contexte professionnel, Node.js est largement utilisé pour concevoir des architectures modernes, efficaces et adaptées aux besoins des applications web actuelles.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Conception et développement d’une application complète avec NodeJS dans le cadre de mon alternance chez SAP. L’application est fonctionnelle, respecte les bonnes pratiques d’ExpressJS et peut être déployée avec Docker Compose ou Kubernetes (Kyma). Dans ce projet, je me suis occupé de la conception et du développement de l’application de bout en bout, tout en la conteneurisant pour un déploiement simplifié avec Docker et en créant les fichiers de configuration nécessaires pour un déploiement sur BTP Kyma (plateforme cloud de SAP)"
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Développement de nouvelles fonctionnalités et correction de bugs d’une application web avec NodeJS, permettant de gérer le catalogue produit d’un client. L’application a été considérablement améliorée suite aux demandes du client : de nouvelles fonctionnalités ont été ajoutées et de nombreux bugs, qui empêchaient une utilisation fluide, ont été corrigés. Je me suis chargé de développer les fonctionnalités demandées par le client, de corriger les bugs connus ainsi que ceux que j’ai identifiés moi-même, et de revoir l’optimisation globale de l’application"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise Node.js ainsi que le langage JavaScript, et des concepts clés tels que la programmation asynchrone, la gestion des événements, la création de serveurs HTTP, la manipulation de fichiers et la sécurité côté serveur. Je suis capable de développer des applications web et des API REST en m’appuyant sur cette compétence, notamment à l’aide du framework ExpressJS.",
                    my_profile: "Node.js est une compétence majeure de mon profil de développeur full stack. Sa maîtrise me permet de concevoir des applications côté serveur de qualité et sécurisées. Elle valorise également mon positionnement de développeur full stack, capable de concevoir et de maintenir des architectures back-end complètes.",
                    speed: "L’apprentissage de Node.js a été progressif, facilité dans un premier temps par mes connaissances en JavaScript. J’ai ensuite approfondi mes bases à travers les différents projets sur lesquels j’ai travaillé, ce qui m’a permis de découvrir et de maîtriser des concepts plus avancés comme l’asynchrone et la gestion des événements.",
                    step_back: "Node.js est une compétence essentielle dans le domaine du développement web. Il permet de concevoir des applications flexibles et robustes avec une quantité de code maîtrisée, notamment grâce à des packages comme ExpressJS. Une bonne maîtrise de JavaScript est indispensable pour comprendre pleinement les mécanismes de Node.js et exploiter efficacement son potentiel."
                },
                evolution: {
                    description: " A moyen terme je souhaite approfondir mes connaissances en architecture micro services avec NodeJS mais encore connaitre les bonnes pratique avec des framework comme ExpressJS ou apprendre la gestion des modules (commonJS / ESM)",
                    next_steps: "Je continue de me former en ligne, en particulier grâce à la documentation officielle de NodeJS avec les différentes mise à jour et les tutoriels vidéos comme sur Youtube"
                }
            },
            {
                name: "Docker",
                image: "docker_logo.png",
                level: "Avancé",
                type: 'technical',
                percentage: 70,
                definition: "Docker est une plateforme de conteneurisation qui permet de créer, déployer et exécuter des applications de manière isolée et reproductible. En encapsulant une application avec ses dépendances dans des conteneurs légers, Docker garantit un comportement cohérent entre les environnements de développement, de test et de production. Dans un contexte professionnel, Docker facilite le déploiement, la scalabilité et la maintenance des applications",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Conteneurisation complète de mon projet dans le cadre de mon alternance chez SAP. Tous les services sont dans des images prêtes à être utilisé. Le projet est aussi déployable grâce à docker compose. J’ai aussi configuré dans le docker compose : des volumes pour les bases de données, des réseaux pour la communication entre conteneurs et utilisé des variables d’environnement pour configurer mes conteneurs"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts fondamentaux de Docker : création d’images, orchestration avec Docker Compose, gestion des volumes et des réseaux, ainsi que la configuration d’environnements multi-services. Je suis capable de créer des environnements de développement reproductibles, de configurer des applications conteneurisées et d’intégrer la génération automatique d’images Docker au sein de pipelines CI/CD.",
                    my_profile: "Docker est un outil indispensable dans mon domaine. Il me permet de conteneuriser mes applications afin de les rendre facilement déployables. Cette compétence m’a également permis de renforcer mes connaissances en DevOps et d’aborder plus sereinement des outils comme Kubernetes. Très recherchée par les entreprises, elle constitue un véritable atout pour différencier mon profil.",
                    speed: "L’apprentissage de Docker a été complexe au départ, certaines notions étant difficiles à appréhender et à mettre en pratique. J’ai néanmoins progressé de manière structurée, en commençant par des conteneurs simples avant d’évoluer vers des configurations plus complexes. La documentation officielle de Docker, ainsi que la communauté, ont été des ressources clés dans cette montée en compétences.",
                    step_back: "Docker est une compétence exigeante qui nécessite une bonne compréhension des bases (images, conteneurs, volumes) avant d’aller plus loin. Cette maîtrise est essentielle pour envisager le déploiement d’applications sur des outils comme Kubernetes. Docker Compose est également un outil complémentaire très utile, permettant de gérer efficacement des environnements multi-conteneurs."
                },
                evolution: {
                    description: "À moyen terme, je souhaite approfondir mes connaissances sur le déploiement d’images Docker en production, l’optimisation des images et le renforcement de leur sécurité, afin de proposer des applications toujours plus robustes et fiables.",
                    next_steps: "Je poursuis ma formation en ligne, notamment à travers la documentation officielle de Docker, ainsi que divers tutoriels écrits et vidéos, notamment sur des plateformes comme YouTube."
                }
            },
            {
                name: "Kubernetes",
                image: "k8s_logo.png",
                level: "Intermédiaire",
                type: 'technical',
                percentage: 60,
                definition: "Kubernetes est une plateforme open source d’orchestration de conteneurs qui permet de déployer, gérer et faire évoluer des applications conteneurisées de manière automatisée. Elle facilite la gestion de la scalabilité, de la haute disponibilité et de la résilience des applications, tout en optimisant l’utilisation des ressources. Dans un contexte professionnel, Kubernetes est un outil clé pour exploiter pleinement des architectures cloud modernes et des environnements de production complexes.",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Déploiement complet de mon projet dans le cadre de mon alternance chez SAP. L’ensemble des services est conteneurisé sous forme d’images Docker et déployé sur SAP BTP Kyma (la plateforme cloud de SAP). J’ai configuré les déploiements des conteneurs, les volumes pour les bases de données, les services pour la communication entre les pods, ainsi que les ConfigMaps et Secrets pour la gestion des variables d’environnement"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts de base de Kubernetes : création de pods et de déploiements, gestion des volumes, des services, des ConfigMaps et des Secrets. Je suis capable de créer et de configurer des environnements de déploiement pour des applications conteneurisées, ainsi que de les déployer sur des plateformes cloud telles que SAP BTP Kyma.",
                    my_profile: "Kubernetes est une compétence complémentaire à Docker, qui m’a permis d’orienter mon profil vers une dimension plus DevOps. Il me permet de déployer des applications conteneurisées dans des environnements cloud. Cette compétence constitue un véritable atout pour les entreprises souhaitant faire évoluer ou étendre leur architecture vers le cloud.",
                    speed: "Tout comme Docker, l’apprentissage de Kubernetes a été exigeant, mais facilité par les similitudes conceptuelles entre les deux outils. J’ai d’abord acquis les bases en déployant de petites applications en local, avant de monter en complexité avec des déploiements en environnement cloud plus contraignant.",
                    step_back: "Kubernetes peut être complexe à appréhender, mais il permet d’acquérir des compétences solides en DevOps et en déploiement d’applications. Une bonne maîtrise d’outils préalables comme Docker est indispensable. Il s’agit néanmoins d’un outil très puissant, particulièrement pertinent dans un contexte où les architectures cloud prennent une place de plus en plus importante."
                },
                evolution: {
                    description: "À moyen terme, mon objectif est d’approfondir mes connaissances, notamment sur la sécurisation des architectures à l’aide des mécanismes d’autorisations et de rôles intégrés à Kubernetes, ainsi que sur la protection des routes d’API.",
                    next_steps: "Je poursuis ma formation en ligne, principalement via la documentation officielle de Kubernetes, complétée par des tutoriels spécialisés sur la sécurité des applications."
                }
            },
            {
                name: "Vue.js",
                image: "Logo-Vuejs.png",
                level: "Intermédiaire",
                type: "technical",
                percentage: 50,
                definition: "Vue.js est un framework JavaScript progressif dédié au développement d’interfaces utilisateur. Il permet de créer des applications web réactives, modulaires et performantes, tout en restant simple à prendre en main. Dans un contexte professionnel, Vue.js est apprécié pour sa flexibilité et sa facilité d’intégration, aussi bien sur des projets existants que sur des applications modernes de plus grande envergure",
                projects: [
                    {
                        title: "Portfolio",
                        link: "/projects?project=portfolio",
                        description: "Conception et développement d’un portfolio dans le cadre de mon master en ingénierie logicielle. L’application a été entièrement développée en Vue.js ; le site est performant, optimisé et responsive. Il respecte l’ensemble des critères définis et intègre également des fonctionnalités telles qu’un thème sombre / clair et une traduction du site en anglais"
                    }
                ],
                autocritique: {
                    description: "Je maîtrise les concepts de base de Vue.js, tels que les composants, les services et le routage. Je suis capable de créer des applications simples, comme des sites vitrine, et d’y intégrer du responsive design. Il me reste toutefois encore de nombreux aspects à approfondir, notamment l’intégration d’API et la création de composants plus complexes",
                    my_profile: "Vue.js est une compétence non négligeable dans mon profil. Ce framework me permet de concevoir des interfaces utilisateur efficacement grâce à sa simplicité d’utilisation. Cette compétence étant recherchée sur le marché du travail, il est essentiel d’en maîtriser les bases et d’en approfondir progressivement les concepts avancés",
                    speed: "L’apprentissage de Vue.js a été relativement simple. Grâce à mes connaissances en Angular et en JavaScript, j’ai su m’adapter rapidement à ce framework. Sa courbe d’apprentissage rapide facilite la compréhension et la maîtrise des concepts fondamentaux",
                    step_back: "Vue.js est un framework accessible et agréable à utiliser. Néanmoins, de solides bases en JavaScript restent indispensables, et des connaissances dans d’autres frameworks constituent un réel avantage. Vue.js évoluant rapidement, il est important de se référer régulièrement à la documentation et de suivre les changements entre les versions"
                },
                evolution: {
                    description: "À moyen terme, je souhaite développer davantage cette compétence afin de consolider mes bases et d’approfondir des concepts plus complexes, dans l’objectif de faire de Vue.js une compétence majeure de mon profil. Cette progression me permettra d’ajouter un framework supplémentaire, particulièrement recherché sur le marché du travail",
                    next_steps: "Je poursuis ma formation en ligne, notamment à travers la documentation officielle de Vue.js, ainsi que divers tutoriels écrits et vidéos, notamment sur des plateformes comme YouTube"
                }
            },
            {
                name: "PHP",
                image: "php-logo.png",
                level: "Débutant",
                type: 'technical',
                percentage: 30,
                definition: "PHP est un langage de programmation côté serveur principalement utilisé pour le développement d’applications web dynamiques. Il permet de traiter des données, d’interagir avec des bases de données et de générer du contenu HTML de manière efficace. Dans un contexte professionnel, PHP reste largement utilisé pour concevoir des applications web robustes, maintenables et intégrées à de nombreux écosystèmes existants",
                projects: [
                    {
                        title: "Auribeau Judo",
                        link: "/projects?project=auribeau-judo",
                        description: "Refonte et développement complet d’un site pour mon ancien club de judo en PHP. J’ai réalisé une refonte intégrale d’un site devenu obsolète, auparavant uniquement développé en HTML et doté de fonctionnalités vieillissantes. J’ai conçu un site plus performant en PHP et ajouté des fonctionnalités telles que la gestion des actualités via un back-office. Le site est toujours en production et reste consultable à ce jour"
                    }
                ],
                autocritique: {
                    description: "Je maitrise les concepts de base de PHP comme : la connexion à une base de donnée, l’affichage de page avec HTML et la gestion de requête GET, POST… Je peux créer de simples applications nécessitant une connexion à une base de donnée. Il me manque encore beaucoup de connaissance sur cette compétence comme l’utilisation de framework avec PHP",
                    my_profile: "PHP reste une compétence complémentaire à mon profil qui me donne une expérience en plus de développement web coté serveur. Cette compétence me permet de de maintenir et d’améliorer des applications plus anciennes. Cette compétence est encore recherché dans le monde du travail et me sera utile",
                    speed: "L’apprentissage de PHP s’est fait progressivement, j’ai d’abord pu m’essayer à PHP lors de mes études puis lors de mon projet Auribeau judo. La syntaxe de PHP est parfois différente des langages plus actuel mais reste accessible. La maitrise de PHP m’a toutefois demandé du temps",
                    step_back: "PHP est un langage simple mais certains concepts peuvent être difficile à appréhender, il faut avoir des bases en HTML ainsi que dans la gestion de requêtes http. L’utilisation de framework avec PHP peuvent grandement améliorer l’aisance avec le langage tout comme l’efficacité"
                },
                evolution: {
                    description: "A moyen terme je souhaite renforcer mes bases en PHP étant donné que cela fait quelques temps que je n’ai pas utilisé cette compétence mais aussi d’apprendre l’utilisation de framework avec PHP comme Laravel par exemple",
                    next_steps: "Je poursuis ma formation en ligne, notamment à travers la documentation officielle de PHP mais aussi les tutoriels concernant l’utilisation de framework en PHP avec la documentation de Laravel"
                }
            },
            {
                name: "Autonomie",
                image: "autonomie.png",
                level: "Intermédiaire",
                type: 'soft',
                percentage: 60,
                definition: "L’autonomie pour un développeur est la capacité à gérer ses tâches, à prendre des initiatives et à avancer de manière indépendante tout en respectant les objectifs et les délais d’un projet. Elle implique de savoir organiser son travail, résoudre des problèmes sans supervision constante et prendre des décisions éclairées",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Autonomie quasi complète sur mon projet dans le cadre de mon alternance chez SAP. L’équipe étant composée de deux personnes (mon tuteur et moi), j’ai dû m’adapter afin de mener le projet à bien de manière autonome. J’ai ainsi conçu et développé l’application par moi-même, en m’appuyant sur les ressources mises à disposition."
                    },
                    {
                        title: "Portfolio",
                        link: "/projects?project=portfolio",
                        description: "Autonomie complète sur la réalisation de mon portfolio dans le cadre de mon master en ingénierie logicielle à l’ISCOD. J’ai développé ce projet en respectant uniquement les règles imposées, tout en intégrant les retours fournis par mon Learning Coach."
                    }
                ],
                autocritique: {
                    description: "Je suis capable de travailler en autonomie sur un projet et de progresser efficacement à partir des consignes fournies. Je peux mener un projet à bien de manière indépendante, tout en prenant en compte les retours et en respectant les règles et contraintes imposées.",
                    my_profile: "L’autonomie est une compétence essentielle dans le domaine du développement. Elle me permet d’être efficace, de prioriser mes tâches et de résoudre des problèmes de manière proactive, sans dépendre en permanence d’un encadrement.",
                    speed: "L’apprentissage de l’autonomie s’est fait progressivement. Les débuts ont été plus complexes, notamment dans la gestion de certaines problématiques seul, mais avec l’expérience, cette compétence s’est développée naturellement grâce à la pratique et à la prise de responsabilités.",
                    step_back: "L’autonomie me paraît indispensable pour un profil comme le mien. Un développeur doit être capable de gérer des problématiques de manière indépendante tout en restant aligné avec les objectifs du projet. Cette compétence favorise la fiabilité, la productivité et la confiance, aussi bien au niveau individuel qu’au sein d’une équipe."
                }
            },
            {
                name: "Capacité d'auto-formation",
                image: "autoformation.png",
                level: "Avancé",
                type: 'soft',
                percentage: 70,
                definition: "La capacité d’autoformation est une compétence clé pour un développeur, lui permettant d’apprendre de manière autonome et continue face à l’évolution rapide des technologies. Elle consiste à savoir identifier ses besoins, rechercher des ressources pertinentes et expérimenter afin d’acquérir de nouvelles compétences ou d’approfondir des connaissances existantes",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Pendant mon alternance chez SAP, j’ai dû me former aux technologies utilisées dans le cadre du projet. J’ai ainsi appris de manière autonome l’utilisation de différentes technologies telles que SAP BTP (Kyma), Angular 18 et Docker"
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Lors de ce projet, j’ai dû apprendre des technologies qui m’étaient inconnues et me former de manière autonome à l’aide de tutoriels et de documentations spécialisées. J’ai ainsi acquis des compétences sur des technologies telles qu’Angular 1, Node.js (ExpressJS) et MongoDB"
                    }
                ],
                autocritique: {
                    description: "Ma capacité d’autoformation repose principalement sur ma curiosité et mon envie d’apprendre de nouvelles choses. Être curieux de découvrir de nouvelles technologies rend naturel pour moi le fait d’apprendre de manière autonome et continue",
                    my_profile: "La capacité à s’autoformer est une compétence importante dans mon parcours. Elle m’a accompagné tout au long de mes expériences et renforce ma capacité d’adaptation dans un environnement où les technologies évoluent constamment. Elle me permet également de maintenir mes compétences à jour sur le long terme",
                    speed: "J’ai été amené à m’autoformer tout au long de mes expériences, ce qui a permis à cette compétence de se développer naturellement. Portée par ma curiosité, ma capacité d’autoformation s’est mise en place rapidement et efficacement",
                    step_back: "La capacité à s’autoformer est aujourd’hui une compétence essentielle. Dans un contexte où les technologies évoluent rapidement et où les mises à jour sont fréquentes, il est indispensable de savoir maintenir et approfondir ses connaissances, y compris sur des compétences déjà acquises"
                }
            },
            {
                name: "Communication",
                image: "communication.png",
                level: "Intermédiaire",
                type: 'soft',
                percentage: 40,
                definition: "Lors de mon alternance chez SAP, j’ai développé mon projet en autonomie, avec l’accompagnement de mon tuteur qui me fournissait des orientations de conception. Nous avons ainsi beaucoup communiqué sur l’avancement du projet. J’ai également présenté le projet à des profils techniques et non techniques, et rédigé une documentation détaillée destinée aux futurs développeurs en charge du projet",
                projects: [
                    {
                        title: "Cloud active defense",
                        link: "/projects?project=cloud-active-defense",
                        description: "Lors de mon alternance chez SAP j’ai développer mon projet en autonomie avec l’aide de mon tuteur qui me donnait des directions de conception. Nous avons donc beaucoup communiqué sur l’avancement du projet. J’ai aussi fait des présentations du projet à des profils techniques et non techniques mais aussi de la documentation détaillé pour les futurs développeurs en charge du projet"
                    },
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Pour ce projet j’ai dû beaucoup communiquer que ce soit avec l’équipe, le chef de projet mais aussi avec le client. La communication interne était principalement orale avec les membres de l’équipe lors de daily meeting pour discuter de l’avancement du projet. La communication avec le client était autant orale qu’écrite que ce soit lors de réunion ou de mails pour décrire les différentes fonctionnalités ajoutés ou amélioration diverses"
                    }
                ],
                autocritique: {
                    description: "Je m’efforce d’adopter une communication claire, structurée et adaptée à chaque interlocuteur, qu’il soit technique ou non. Bien que je considère que cette compétence peut encore être améliorée, je suis motivé à la développer continuellement afin de renforcer l’efficacité de mes échanges professionnels",
                    my_profile: "La communication occupe une place importante dans mon domaine. Savoir présenter, discuter et écouter est, selon moi, une compétence essentielle dans toutes les situations. Elle renforce ma confiance en moi et m’apporte de l’assurance dans mes interactions, que ce soit avec des utilisateurs ou des membres de mon équipe",
                    speed: "Le développement de cette compétence a été progressif. Timide et réservé au départ, je n’étais pas à l’aise pour communiquer. Mes différentes expériences, ainsi que les retours constructifs de mes interlocuteurs, m’ont permis de gagner en aisance et en efficacité",
                    step_back: "La communication repose largement sur la confiance en soi. Savoir ce que l’on souhaite exprimer et comprendre ce que l’on attend facilite grandement les échanges. Adopter une démarche bienveillante reste, selon moi, la meilleure approche pour développer cette compétence et la mettre en pratique efficacement"
                }
            },
            {
                name: "Relation client",
                image: "relation-client.png",
                level: "Intermédiaire",
                type: 'soft',
                percentage: 50,
                definition: "La relation client désigne l'ensemble des interactions et des échanges entre une entreprise et ses clients, visant à établir et maintenir une relation de confiance et de satisfaction mutuelle",
                projects: [
                    {
                        title: "Datahub",
                        link: "/projects?project=datahub",
                        description: "Pour ce projet, j’ai été en contact direct avec le client, avec des échanges quasi quotidiens. J’ai su établir une communication fluide, à la fois orale et écrite, tout en veillant à être attentif et à bien comprendre les besoins exprimés par le client"
                    }
                ],
                autocritique: {
                    description: "Ma relation avec les clients est à la fois professionnelle et proactive. Je m’efforce d’être attentif à leurs besoins et de bien comprendre leurs attentes afin de proposer des solutions adaptées. J’aime également ajuster mon discours en fonction du profil des clients, qu’ils soient techniques ou non techniques",
                    my_profile: "La relation client est une compétence clé de mon profil, car elle permet de s’assurer que les projets répondent aux attentes et que les livrables satisfont pleinement les clients. Elle renforce ma crédibilité professionnelle et facilite la collaboration avec les clients ainsi qu’avec l’ensemble des parties prenantes tout au long des projets",
                    speed: "J’ai développé cette compétence au fil de mes expériences professionnelles, en m’appuyant sur l’écoute active et les retours des clients pour améliorer continuellement mes interactions",
                    step_back: "Maintenir une bonne relation client nécessite transparence, communication régulière et volonté de comprendre les besoins sous-jacents aux demandes exprimées. Cette approche permet d’établir une confiance durable et d’optimiser la réussite des projets"
                }
            }
        ]}
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
        <h1 class="view-title">Mes compétences</h1>
        <div class="skill-list-container">
            <div class="technical">
                <h2>Compétences techniques</h2>
                <div class="skill-list">
                    <template v-for="(skill, idx) in skills.filter(s => s.type === 'technical')" :key="idx">
                        <div class="skill-item" @click="openModalIndex = idx">
                            <div class="top-container">
                                <img :src="skill.image" :alt="skill.name" class="skill-image"/> 
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
                            <h3 class="modal-sub-title">Ma définition:</h3>
                            <p class="modal-text">{{ skill.definition }}</p>
                            <div class="project-container">
                                <h3 class="modal-sub-title">Mes éléments de preuve:</h3>
                                <div class="project" v-for="(project, pIdx) in skill.projects" :key="pIdx">
                                    <router-link class="project-link" :to="project.link">
                                        <b>{{ project.title }}</b>
                                    </router-link>
                                    <p class="modal-text">{{ project.description }}</p>
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
                        <div class="skill-item" @click="openModalIndex = idx">
                            <div class="top-container">
                                <img :src="skill.image" :alt="skill.name" class="skill-image"/> 
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
                            <h3 class="modal-sub-title">Ma définition:</h3>
                            <p class="modal-text">{{ skill.definition }}</p>
                            <div class="project-container">
                                <h3 class="modal-sub-title">Mes éléments de preuve:</h3>
                                <div class="project" v-for="(project, pIdx) in skill.projects" :key="pIdx">
                                    <router-link class="project-link" :to="project.link">
                                        <b>{{ project.title }}</b>
                                    </router-link>
                                    <p class="modal-text">{{ project.description }}</p>
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
        margin-top: 3rem;
    }
    .technical, .soft {
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
        width: 25%;
        margin: 1rem;
        height: 35vh;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        cursor: pointer;
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
</style>