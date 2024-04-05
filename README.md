> Dorian Grasset - Tristan Radulescu - Nathael Bonnal

# Cadavre exquis

Bienvenue dans la documentation de déploiement d'infrastructure sur Scaleway à l'aide de Terraform. Cette documentation vise à vous guider à travers le processus de configuration et de déploiement d'une infrastructure cloud complète sur la plateforme Scaleway, en utilisant Terraform pour l'automatisation et la gestion del'infrasutrcture en tant que code.

![](example.gif)

# Prérequis

Avant de commencer le déploiement de votre infrastructure assurez-vous de disposer des éléments suivants:

-   Compte Scaleway: Vous devez disposer d'un compte Scaleway pour accéder à la console de gestion et créer de ressources.
-   Accès à l'API Scaleway: Obtenez vos clés d'API Scaleway pour pouvoir interagir avec les services via Terraform.
-   Terraform installé: Assurez-vous d'avoir Terraform installé sur votre machine locale. Vous pouvez le [télécharger](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) à partir du site officiel de Terraform.
-   Cloner le repo: Assurez-vous de disposer du projet sur votre machine afin de l'utiliser - [projet](https://github.com/418-Error/cloud-cadavre-exquis)

Cette documentation suppose que vous avez une certaine expérience avec Terraform ainsi qu'une connaissance générale des concepts d'infrastructure cloud.

## Configuration des Outils

Avant de commencer le déploiement, vous devez vos outils pour interagir avec Scaleway via Terraform. Cela implique la configuration de Terraform pour utiliser le provider Scaleway, ainsi que la gestion des variables d'environnements pour sécuriser l'accès à votre compte Scaleway.

### Configuration de Terraform pour Scaleway

L'ensemble de nos modules et dossier terraform se trouve dans `./terraform`

Voici un exemple de notre architecture
```
/terraform
├── 00.bucket_backend
│   ├── main.tf
│   ├── variables.tf
│   └── ...
├── 01.kosmos
│   ├── main.tf
│   ├── variables.tf
│   └── ...
├── ...
├── modules
│   ├── kapsule
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── ...
│   ├── ...
│   └── ...
├── backend.tf
└── variables.tf
```


1. Installation de Provider Scaleway:
Tout d'abord, assurez-vous d'avoir la dernière version du provider Scaleway installée. Vous pouvez l'installer en exécutant la commande suivante :
```
terraform init
```


2. Configuration des Variables d'Environnement: Pour sécuriser l'accès à votre compte Scaleway, vous devez définir vos clés d'API Scaleway en tant que variables d'environnement ou dans un fichier de configuration Terraform. Vous pouvez définir ces variables d'environnement dans votre terminal, soit dans un fichier tfvars (équivalent du .env) ou avec un secret manager.

```bash
# terraform.tfvars

access_key = "SCW100000100010001"
secret_key = "SecretKey"
organization_id = "OrganizationId"
project_id = "ProjectId"
email = "nathael.bonnal@oomade.com"
```

## Exécution

```

```

## Architecture

![](exquisite-corpse1.png)

![](exquisite-corpse2.png)

# Common

| Env Var       | Description            | Default     |
| ------------- | ---------------------- | ----------- |
| `INSTANCE_ID` | Define the instance id | Random UUID |
| `APP_ID`      | Application id         | `""`        |

### Dispatcher

| Env Var         | Description                                     | Default |
| --------------- | ----------------------------------------------- | ------- |
| `PORT`          | Http port to listen to                          | `8080`  |
| `REGISTER_URLS` | Url to call registers on (list splitted by `,`) | N/A     |

### Register

| Env Var                     | Description                        | Default |
| --------------------------- | ---------------------------------- | ------- |
| `PORT`                      | Http port to listen to             | `8080`  |
| `STORAGE`                   | Define storage target (PG, MEMORY) | `PG`    |
| `POSTGRESQL_ADDON_HOST`     | Postgresql host                    | N/A     |
| `POSTGRESQL_ADDON_PORT`     | Postgresql port                    | N/A     |
| `POSTGRESQL_ADDON_DB`       | Postgresql database to use         | N/A     |
| `POSTGRESQL_ADDON_USER`     | User for postgrsql connection      | N/A     |
| `POSTGRESQL_ADDON_PASSWORD` | Password for postgrsql connection  | N/A     |

### Provider

| Env Var          | Description                                                               | Default                     |
| ---------------- | ------------------------------------------------------------------------- | --------------------------- |
| ` PORT`          | Http port to listen to                                                    | `8080`                      |
| `REGISTER_URLS`  | Url to call registers on (list splitted by `,`)                           | N/A                         |
| `PROVIDER_TYPE`  | Define the provider type of the instance (`VERB`, `ADJECTIVE`, `SUBJECT`) | Random in possible values   |
| `ADVERTISER_URL` | Define the url sent to registers when starting                            | `http://<detectedip>:$PORT` |
