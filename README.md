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

### **1. Gestion des thèmes**

Les thèmes Light et Dark sont configurés dans `lib/core/themes/app_theme.dart`. Vous pouvez personnaliser les couleurs et les styles selon vos besoins.

### **2. Navigation**

La navigation est gérée avec **GoRouter**. Les routes sont définies dans `lib/core/navigation/app_router.dart`.

### **3. Authentification**

Le système d'authentification est prêt à être utilisé. Il suffit de configurer votre backend (Firebase ou API REST) dans `lib/data/datasources/api_client.dart`.

### **4. Localisation**

Les fichiers de traduction se trouvent dans `assets/translations/`. Ajoutez des fichiers JSON pour chaque langue supportée.

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

Les composants UI réutilisables se trouvent dans `lib/presentation/shared/`. Par exemple, pour utiliser un bouton personnalisé :

```dart
PrimaryButton(
  text: 'Login',
  onPressed: () => print('Button clicked'),
);
```

### **Changer de gestionnaire d'état**

Le template supporte Riverpod, Provider, Bloc, et GetX. Pour changer de gestionnaire d'état :

1. Modifiez les dépendances dans `pubspec.yaml`.
2. Mettez à jour les providers dans `lib/core/dependencies/`.

---

## **Tests**

### **Tests unitaires**

Les tests unitaires sont dans `test/unit/`. Exemple :

```bash
flutter test test/unit/login_usecase_test.dart
```

### **Tests d'intégration**

Les tests d'intégration sont dans `test/integration/`. Exemple :

```bash
flutter test test/integration/auth_flow_test.dart
```

---

## **CI/CD**

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

- **Votre Nom** - [Votre GitHub](https://github.com/votre-utilisateur)

---

## **Remerciements**

- Merci à la communauté Flutter pour les packages et les ressources.
- Inspiré par Clean Architecture et MVVM.

---

## **Support**

Pour toute question ou suggestion, ouvrez une issue sur [GitHub](https://github.com/votre-utilisateur/flutter-ui-kit/issues).

---

Ce **README.md** fournit une vue d'ensemble complète du projet, des instructions d'installation, de configuration, et des bonnes pratiques pour contribuer. Vous pouvez l'adapter en fonction des spécificités de votre projet.
