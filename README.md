# PISB Flutter SIG - Medicine Finder App 🌟

Welcome to the official repository for the PISB Flutter SIG! This project serves as a comprehensive introduction to Flutter development, where participants build a practical Medicine Finder App from scratch.

The app allows users to:

- **Search for Medicines**: Enter a medicine name and fetch detailed information like usage, side effects, dosage, and pricing using external APIs.
- **User Authentication**: Implement a basic login and logout system.
- **Interactive UI**: Learn Flutter widgets, navigation, state management, and Material Design principles.
  This repository contains:

- Step-by-step Code: Designed for beginners, with modular components for easy understanding.
- API Integration: Uses free APIs (OpenFDA) to demonstrate real-world data fetching.
- Documentation: Includes guidance for setting up the app and learning core Flutter concepts.


## Contents

- [Project Setup](#project-setup-in-android-studio)

---

## Project Setup in Android Studio

### 1. Open Android Studio
- Launch Android Studio.
- If you’re opening it for the first time, select New Flutter Project from the "Welcome" screen.

### 2. Configure the Flutter Project
- Select Flutter: In the pop-up dialog, choose Flutter Application.
- Configure Project Details:
- Enter the Project Name (e.g., medicine_finder).

- Set the Project Location.
- Specify the Flutter SDK Path (if not pre-configured).
- Select the desired Platform Channels (Android/iOS).

3. Finish Project Setup
   Click Finish.
   Wait for Android Studio to create the project and set up dependencies.

# Flutter Project Directory Structure

When you create a Flutter project, it generates a basic folder structure. Here's an overview of the important directories and files in a Flutter project:

---

### **1. `lib/` Directory**
This is the primary directory where all your Flutter code lives.
- **Main Dart File (`main.dart`)**:
    - This is the entry point of your Flutter application. It contains the `main()` function and the root widget that runs the app.
    - **Example**:
      ```dart
      import 'package:flutter/material.dart';
 
      void main() {
        runApp(MyApp());
      }
 
      class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(title: Text('My Flutter App')),
              body: Center(child: Text('Hello, World!')),
            ),
          );
        }
      }
      ```

- **`lib/` Subdirectories**:
    - This is where you'll organize your code into multiple Dart files. Typically, developers create directories like:
        - `screens/`: For app screens (UI components).
        - `models/`: For app data models.
        - `services/`: For API calls, data storage, and other business logic.
        - `widgets/`: For reusable UI components.

---

### **2. `android/` Directory**
This directory contains the Android-specific code and configuration files. If you’re building a Flutter app for Android, this is where Android-specific setup resides.

---

### **3. `ios/` Directory**
Contains iOS-specific code and settings for building your app for iOS devices.

- **`ios/Runner/`**:
    - Contains the iOS-specific settings, such as `Info.plist` (app settings), and the `Runner` directory for the app.
    - Includes `AppDelegate.swift`, which is the iOS entry point for the app.

---

### **4. `pubspec.yaml`**
This file is the heart of the Flutter project for managing dependencies, assets, and other configurations.

- **Dependencies**:
    - The `dependencies` section is where you add external libraries like `http`, `provider`, `firebase`, etc. These packages help you extend the functionality of your app.
    - **Example**:
      ```yaml
      dependencies:
        flutter:
          sdk: flutter
        http: ^0.14.0  # Example package
      ```

- **Flutter Assets**:
    - Under the `flutter` section, you can specify assets like images, fonts, and other resources.
    - **Example**:
      ```yaml
      flutter:
        assets:
          - assets/images/
        fonts:
          - family: MyFont
            fonts:
              - asset: assets/fonts/my_font.ttf
      ```

---

### **5. `assets/` Directory (Optional)**
This directory is where you store images, fonts, and other resources that the app will use. You need to specify these assets in the `pubspec.yaml` file.

---

### **Summary of Folder Structure**:

```bash
medicine_finder_app/
│
├── android/                # Android-specific code and configuration
│
├── ios/                    # iOS-specific code and configuration
│
├── lib/                    # Flutter code (Dart files)
│   └── main.dart           # Entry point of the Flutter app
│
├── assets/                 # Images, fonts, and other assets (optional)
│
├── build/                  # Generated files during the build process
│
├── test/                   # Unit tests and widget tests
│
├── pubspec.yaml            # Dependencies and project configuration
├── .gitignore              # Files to ignore in Git

```
---

## Stateless vs Stateful Widgets

## **Stateless Widget**
- **Definition**: A widget that does not change its state after it is built.
- **When to use**: Use when the UI doesn't change dynamically based on user interaction or external events.
- **Example**: Text, Icon, Image.

---

### **Stateful Widget**
- **Definition**: A widget that can change its state during the lifetime of the widget. The UI updates when the state changes.
- **When to use**: Use when the UI needs to change dynamically based on user input, animation, or data.
- **Example**: Forms, Buttons, Checkboxes.

---

### **Key Differences**:
- **StatelessWidget**: Cannot rebuild its UI (immutable).
- **StatefulWidget**: Can rebuild its UI when the state changes.

---

### **Flutter Docs Links**:
- [StatelessWidget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)
- [StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)


## Flutter Widget Hierarchy: MaterialApp → Scaffold → Body

### **1. MaterialApp**
- **Definition**: The top-level widget for Flutter applications that provides material design visuals, themes, routing, and more.
- **Purpose**: It is the root of the widget tree and wraps the entire app, providing essential configurations like themes, navigation, and accessibility.
- **Usage**: The `MaterialApp` widget is where you define your app's routes, themes, and navigation.

### **2. Scaffold**
- **Definition**: A layout structure for the app that provides an app bar, body, floating action button, bottom navigation bar, and other components.
- **Purpose**: It is the basic visual layout structure of a material app. It holds the main UI elements like the app bar, drawer, body, etc.
- **Usage**: The `Scaffold` widget is where you place most of your UI elements within a typical app screen.

### **3. Body**
- **Definition**: The main content area of a `Scaffold`, where the UI elements and widgets are displayed.
- **Purpose**: The body contains the primary content of the screen, which can be composed of various widgets (e.g., `Text`, `Column`, `Row`, `ListView`).
- **Usage**: The `body` can be any widget or widget tree that will be displayed in the center of the screen.

#### **Widget Hierarchy Overview**:
1. **MaterialApp**: Top-level configuration for your app, setting up themes, routing, etc.
2. **Scaffold**: Provides the basic layout structure, including app bars, drawers, and the body.
3. **Body**: The main content area inside `Scaffold` where UI elements are placed.


### **Flutter Docs Links**:
- [MaterialApp](https://api.flutter.dev/flutter/widgets/MaterialApp-class.html)
- [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)

