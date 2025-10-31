# 🚗 RentApp — Car Rental Flutter App

A modern Flutter application for browsing and renting cars, built using **Clean Architecture**, **Firebase**, **Bloc**, and **GetIt** for dependency injection.

---

##  Features

-  **Firebase Integration** — Store and fetch car data in Cloud Firestore  
-  **Bloc State Management** — Reactive UI updates with clean separation of logic  
-  **Map Integration** — View car locations on a map  
-  **GetIt Injection** — Simple and scalable dependency management  
-  **Modern UI** — Built with Material 3 design principles

lib/
├── data/
│ ├── datasources/
│ │ └── firebase_car_data_source.dart
│ ├── models/
│ │ └── car.dart
│ └── repositories/
│ └── car_repository_impl.dart
│
├── domain/
│ ├── repositories/
│ │ └── car_repository.dart
│ └── usecases/
│ └── get_cars.dart
│
├── present/
│ ├── bloc/
│ │ ├── car_bloc.dart
│ │ ├── car_event.dart
│ │ └── car_state.dart
│ ├── pages/
│ │ ├── onboarding_page.dart
│ │ ├── car_list_screen.dart
│ │ ├── car_details_page.dart
│ │ └── MapsDetailsPage.dart
│ └── widgets/
│ ├── car_card.dart
│ └── more_card.dart
│
├── injection_container.dart
└── main.dart



##  Getting Started

### 1 Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Firebase project with Firestore enabled

### 2 Install dependencies
```bash
flutter pub get


 3 Add your Firebase config

 Download your google-services.json and firebase_options.dart from Firebase Console
and place them in the appropriate directories.

4 Run the app

flutter run
