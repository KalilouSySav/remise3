Sure, here's the revised Markdown code without the code snippets:

## Remise3 - README.md

### Description

Remise3 est une application de gestion de clients, films et cartes de crédit développée en Flutter. Elle permet de créer, modifier et supprimer des clients et de gérer leurs cartes de crédit. L'application offre également la possibilité de visualiser les informations des films et les détails associés tels que les catégories et les acteurs.

### Table des matières

* [Prérequis](#prérequis)
* [Installation](#installation)
* [Utilisation](#utilisation)
* [Structure du Projet](#structure-du-projet)
* [Tests](#tests)
* [Créer l'Exécutable](#créer-l'exécutable)

### Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants installés sur votre machine :

* Flutter ([https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)) (version 2.0 ou supérieure)
* Dart ([https://dart.dev/](https://dart.dev/))
* Git ([https://git-scm.com/downloads](https://git-scm.com/downloads))
* Visual Studio Code ([https://code.visualstudio.com/](https://code.visualstudio.com/)) (recommandé)

### Installation

1. Clonez le dépôt GitHub :

Suivez les instructions de clonage de dépôt Git.

2. Installez les dépendances Flutter :

Exécutez la commande `flutter pub get` dans votre terminal.

3. Exécutez l'application sur un émulateur ou un appareil connecté :

Exécutez la commande `flutter run` dans votre terminal.

### Utilisation

L'application dispose de plusieurs écrans pour gérer les clients, les cartes de crédit et les films.

* **Écran Principal** : Affiche la liste des clients et des films.
* **Créer un Client** : Permet de saisir les informations personnelles d'un client et ses cartes de crédit.
* **Modifier un Client** : Permet de modifier les informations d'un client existant.

#### Ajouter une Carte de Crédit

1. Accédez à l'écran de création ou de modification d'un client.
2. Saisissez les informations de la carte de crédit dans la section dédiée.
3. Cliquez sur le bouton **Ajouter Carte** pour valider et ajouter la carte à la liste.

### Exécutable pour Windows

1. Construisez l'application pour Windows :

Suivez les instructions de construction d'exécutable pour Windows avec Flutter.

2. L'exécutable se trouve dans `build\windows\runner\Release`. Lancez `remise3.exe` pour exécuter l'application.

### Structure du Projet

Voici un aperçu de la structure des répertoires du projet :

```
│   main.dart
│
├───models
│       acteur.dart
│       carte_credit.dart
│       categorie.dart
│       client.dart
│       employe.dart
│       film.dart
│       personne.dart
│
├───utils
│   │   encryption.dart
│   │   validators.dart
│   │
│   ├───interface
│   │       IAuthentificationService.dart
│   │       IClientRepository.dart
│   │
│   ├───repository
│   │       ClientRepository.dart
│   │
│   └───service
│           AuthentificationService.dart
│
└───views
        client_create_view.dart
        client_edit_view.dart
        login_view.dart
        main_read_only_view.dart
        main_view.dart

```

### Tests

Pour exécuter les tests unitaires, utilisez la commande suivante :

```bash
flutter test
```

### Créer l'Exécutable

#### Pour Windows

1. Compilez l'application pour Windows :

Suivez les instructions de construction d'exécutable pour Windows avec Flutter.

2. L'exécutable sera situé dans `build\windows\runner\Release`.

