> ⚠️ **WORK IN PROGRESS**: This repository is under active development. The architecture, configurations, and documentation are subject to change. 

# Test Technique Instagram Stories Clone README

##Introduction
Ce projet est un clone des fonctionnalités de stories d'Instragram, réalisé dans le cadre d'un test techniques 

Ce projet est un clone des fonctionnalités de stories Instagram, réalisé dans le cadre d'un test technique. L'application est développée en Swift/SwiftUI et reproduit fidèlement les principales fonctionnalités du système de stories d'Instagram.


##Cahier des charges
- **Écran de liste des stories**
    - Afficher une liste de stories (avec pagination : nombre infini de stories, même si les données se répètent). Le reste de l'écran n'a pas d'importance, il peut etre vide 
- Chaque story doit être visuellement identifiable comme vue ou non vue.
- **Écran de visualisation des stories**
- L'utilisateur doit pouvoir naviguer entre la liste des stories et les stories individuelles.
- Les stories doivent inclure une fonctionnalité J'aime / Je n'aime plus.
- S'inspirer d’Instagram pour l’expérience utilisateur (gestes, boutons, etc.).
- **États**
- L'utilisateur peut aimer une story.
- Les états vue / non vue doivent être clairement affichés.
- **Persistance**
- Les états doivent persister entre les sessions de l’application.

##Architecture
L'application est structurée selon le pattern MVVM (Model-View-ViewModel) pour une séparation claire des responsabilités :
###Structure du projet
`
├── InstagramTest/
│   ├── InstagramTestApp.swift
│   ├── Model/
│   │   ├── SampleItem.swift
│   │   ├── Story.swift
│   ├── Preview/
│   │   ├── Preview+ModelContainer.swift
│   ├── Preview Content/
│   │   │── Preview Assets/
│   ├── View/
│   │   ├── ContentView.swift
│   │   ├── ProfileStoryBundle.swift
│   │   ├── StoryCardView.swift
│   │   ├── StoryScrollView.swift
│   ├── ViewModel/
│   │   ├── StoryViewModel.swift
│   ├── Assets/
└── InstagramTest.xcodeproj
`
##Configuration
- Xcode 15.0+
- iOS 16.0
- Swift 5

##Installation

- Clonez ce dépôt `https://github.com/GuillaumeGenest/InstagramTest.git`
- Ouvrez le fichier InstagramStoriesClone.xcodeproj dans Xcode
- Compilez et exécutez l'application sur un simulateur ou un appareil physique

##Modèle de données
Pour cet exemple des données ont été crées, SampleItem et insérer direcetement dans le modèle
Les données des stories sont chargées à partir d'un fichier JSON qui a été fournis 
Exemple de modèle StoryBundle :

`@Model
final class StoryBundle: Identifiable {
    @Attribute(.unique) var id: String
    var profileName: String
    var profileImage: String
    var isSeen: Bool
    @Relationship(deleteRule: .cascade) var stories: [Story]
    var currentStoryIndex: Int
  
    
    init(id: String = UUID().uuidString, profileName: String, profileImage: String, isSeen: Bool = false, stories: [Story], currentStoryIndex: Int = 0) {
        self.id = id
        self.profileName = profileName
        self.profileImage = profileImage
        self.isSeen = isSeen
        self.stories = stories
        self.currentStoryIndex = currentStoryIndex
    }`

## Implémentation clé
###Persistance des données 
Le choix qui a été fait pour ce projet est SwiftData

###Barre de stories
La barre horizontale est implémentée avec un ScrollView horizontal qui affiche les avatars des utilisateurs avec un gradient pour la story non vue(vu/non vu) et un cercle gris pour la story vu.

###Visualisation des stories
Le système de visualisation des stories utilise un TabView avec un mode .page pour permettre le défilement horizontal entre les stories d'un utilisateur.

###Gestion des likes
Un tap sur le bouton coeur en bas de la story permet de la liker.

##Tests
L'application n'inclut pas de tests unitaires
Les tests ont été réalisés en preview et sur un portable physique


## Développement à venir
- Passage d'une utilisateur à un autre
- Animation de progression plus fluide
- Mise en place d'un timmer
- Réalisation visuelle du like
- Mise en place de lecture vidéo
- Possibilité d'ajouter des commentaires
- Support des mentions et hashtags cliquables

##Conclusion
Ce projet démontre ma capacité à reproduire une interface utilisateur complexe avec SwiftUI, tout en maintenant un code propre, modulaire et maintenable.
L'architecture MVVM facilite les tests et les futures extensions du projet.
