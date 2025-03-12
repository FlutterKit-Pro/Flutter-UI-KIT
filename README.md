# Flutter-UI-KIT

# flutter_kit_pro

/// create by Oumar Fall

Voici un exemple de documentation pour le fichier **README.md** du projet **Flutter-UI-KIT**. Cette documentation est conçue pour être claire, concise et facile à suivre, afin que tout développeur puisse rapidement comprendre et utiliser le template.

---

# **Flutter-UI-KIT**

**Flutter-UI-KIT** est un template Flutter conçu pour être une base réutilisable pour tous vos projets. Il suit une architecture **Feature-First**, **Clean Architecture**, et **MVVM**, et inclut plusieurs options de gestion d'état (Riverpod, Provider, Bloc, GetX). Ce template est livré avec des fonctionnalités clés prêtes à l'emploi, telles que l'authentification, la gestion des thèmes, la navigation, et des composants UI réutilisables.

---

## **Fonctionnalités**

- **Architecture :** Feature-First, Clean Architecture, MVVM.
- **Gestion d'état :** Riverpod, Provider, Bloc, GetX (au choix).
- **Authentification :** Login, Logout, gestion des sessions.
- **Thèmes :** Support Light/Dark mode.
- **Navigation :** Structurée avec GoRouter.
- **Composants UI :** Boutons, champs de formulaire, dialogues, etc.
- **Localisation :** Support multi-langues.
- **Gestion des erreurs :** Centralisée et conviviale.
- **Tests :** Unitaires et d'intégration.
- **CI/CD :** Intégration avec GitHub Actions.

---

## **Installation**

1. **Cloner le projet :**

   ```bash
   git clone https://github.com/votre-utilisateur/flutter-ui-kit.git
   cd flutter-ui-kit
   ```

2. **Installer les dépendances :**

   ```bash
   flutter pub get
   ```

3. **Lancer l'application :**

   ```bash
   flutter run
   ```

---

## **Configuration**

### **1. Architecture**

### Vue d'ensemble

## Avantages de l'architecture feature-first

- Maintenabilité : Chaque fonctionnalité est isolée, facilitant les modifications
- Scalabilité : Facilite le travail en équipe, chaque développeur peut travailler sur une fonctionnalité différente
- Testabilité : Les fonctionnalités peuvent être testées indépendamment
- Clarté : Il est facile de comprendre où se trouve le code d'une fonctionnalité spécifique
- Modularité : Permet de transformer des fonctionnalités en packages séparés si nécessaire

### 2.2 Structure du Projet

```lib/
├── constants/
│   └── constant.dart
├── features/ 
│   ├── authentication/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── home/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── setting/
│       ├── data/
│       ├── domain/
│       └── presentation/
├── localization/
│   ├── intl_en.arb
│   └── intl_fr.arb
├── routing/
│   ├── app_router.dart
│   └── routes.dart
└── common/
    ├── services/
    ├── theme/
    ├── widgets/
    └── utils/

```

### **2. Navigation**

La navigation est gérée avec **GoRouter**. Les routes sont définies dans `lib/src/routing/app_router.dart`.

### **3. Authentification**

Le système d'authentification est prêt à être utilisé. Il suffit de configurer votre backend (Firebase ou API REST) dans `lib/src/Feature/authentication`.

### **4. Localisation**

Les fichiers de traduction se trouvent dans `lib/src/localization/intl_en.arb`. Ajoutez des fichiers JSON pour chaque langue supportée.

### **5. Tests**

Les tests unitaires et d'intégration sont dans le dossier `test/`. Exécutez-les avec :

```bash
flutter test
```

---

## **Utilisation**

### **Ajouter une nouvelle feature**

1. Créez un dossier dans `lib/presentation/features/` pour votre feature.
2. Ajoutez les fichiers nécessaires (views, viewmodels, widgets).
3. Définissez les routes dans `lib/core/navigation/app_router.dart`.

### **Utiliser des composants UI**

Les composants UI réutilisables se trouvent dans `lib/src/featur/setting/presentation/screen/`. Par exemple, pour utiliser un bouton personnalisé :

```dart
PrimaryButton(
  text: 'Login',
  onPressed: () => print('Button clicked'),
);
```

Le projet est configuré avec **GitHub Actions** pour exécuter les tests à chaque push ou pull request. Le fichier de configuration se trouve dans `.github/workflows/ci_cd.yml`.

---

## **Contribuer**

1. Forkez le projet.
2. Créez une branche pour votre feature (`git checkout -b feature/AmazingFeature`).
3. Committez vos changements (`git commit -m 'Add some AmazingFeature'`).
4. Pushez la branche (`git push origin feature/AmazingFeature`).
5. Ouvrez une Pull Request.

---

## **Licence**

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

---

## **Auteur**

- **Votre Nom** - [Oumar Fall](https://github.com/omar6260)

---

## **Remerciements**

- Merci à la communauté Flutter pour les packages et les ressources.
- Inspiré par Clean Architecture et MVVM.

---

## **Support**

Pour toute question ou suggestion, ouvrez une issue sur [GitHub](https://github.com/votre-utilisateur/flutter-ui-kit/issues).

---

Ce **README.md** fournit une vue d'ensemble complète du projet, des instructions d'installation, de configuration, et des bonnes pratiques pour contribuer. Vous pouvez l'adapter en fonction des spécificités de votre projet.
