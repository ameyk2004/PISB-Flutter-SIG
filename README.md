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

## Flow of App we have to create and the design

Add Photos

## Flutter Widgets: AppBar, Column, and Text

### **1. AppBar**
- **Definition**: A material design app bar that can hold the title, actions, icons, and more.
- **Purpose**: Provides a header section for your app screen, typically used to display the app title and actions like buttons.
- **Usage**: Often used in `Scaffold` to add a header at the top of the screen.

---

### **2. Column**
- **Definition**: A widget that arranges its children vertically in a column.
- **Purpose**: Used to display a list of widgets vertically, one after another.
- **Usage**: Commonly used to create layouts with vertical stacking of elements.

---

### **3. Text**
- **Definition**: A widget that displays a string of text with various styling options.
- **Purpose**: Used to display simple text in the UI, such as labels, descriptions, etc.
- **Usage**: Can be customized with different styles like color, font size, weight, etc.

---

### **Flutter Docs Links**:
- [AppBar](https://api.flutter.dev/flutter/material/AppBar-class.html)
- [Column](https://api.flutter.dev/flutter/widgets/Column-class.html)
- [Text](https://api.flutter.dev/flutter/widgets/Text-class.html)



## Flutter Widgets: Carousel Image and Asset Addition

### **1. Carousel Image**
- **Definition**: A widget that allows you to display multiple images in a scrollable, sliding view (carousel).
- **Purpose**: Used to showcase a series of images in a slider format, often used in onboarding screens, promotions, or galleries.
- **Usage**: Typically used with a package like [carousel_slider](https://pub.dev/packages/carousel_slider) to implement smooth image carousels.

---

### **2. Asset Addition**
- **Definition**: Flutter allows you to add images, fonts, or other files to your project as assets.
- **Purpose**: Assets are bundled with your app and can be accessed and displayed in the app’s UI.
- **Usage**: You must declare assets in the `pubspec.yaml` file to include them in your project.

#### **Steps to Add Assets**:
1. Place the asset (image, font, etc.) in the `assets` directory of your Flutter project.
2. Declare the asset in `pubspec.yaml` under the `flutter` section.

Example:
```yaml
flutter:
  assets:
    - assets/images/
    - assets/fonts/
```

## Flutter Widgets: Padding, ListView, and ListView.builder

## **1. Padding**
- **Definition**: A widget that adds space around its child widget.
- **Purpose**: Used to create spacing around a widget to prevent it from touching other UI elements.
- **Usage**: Wrap any widget with `Padding` to give it some padding from its surrounding widgets.

---

### **2. ListView**
- **Definition**: A scrollable list of widgets arranged linearly (either vertically or horizontally).
- **Purpose**: Used to display a large number of items in a scrollable list. It automatically handles scrolling for you.
- **Usage**: Typically used when you have a collection of widgets that need to be displayed in a list format.

#### **Types of ListView**:
- **ListView**: Used when you have a fixed number of children and the list is not too large.

---

### **3. ListView.builder**
- **Definition**: A lazy-loading version of `ListView` that builds items on demand as they are scrolled into view.
- **Purpose**: Efficiently creates items in a list only when they are visible on screen, making it ideal for large lists.
- **Usage**: Use `ListView.builder` when you have dynamic data or a large number of items to display.

#### **Usage**:
- `itemBuilder` callback creates each item as needed.
- `itemCount` specifies the total number of items.

---

#### **Flutter Docs Links**:
- [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html)
- [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html)

---

## API Calling in Flutter Using HTTP Package

### **1. Setting Up HTTP Package**
To make API calls in Flutter, you'll need to use the `http` package. To add it to your project, follow these steps:

1. Add the `http` package to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^0.14.0
```

2. Run the command to install the package:
```bash
flutter pub get
```

---

### **2. Making a GET Request**

A `GET` request is used to fetch data from an API. Here's an example of how to make a simple `GET` request:

### **Example (GET request)**:
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON data
    List<dynamic> data = json.decode(response.body);
    print(data);
  } else {
    // If the server does not return a 200 OK response, throw an error
    throw Exception('Failed to load data');
  }
}
```

In this example, we send a `GET` request to fetch posts from a placeholder API (`jsonplaceholder.typicode.com`). We then check the response status code and decode the response body.

---

### **3. Making a POST Request**

A `POST` request is used to send data to an API. Here's an example of how to make a simple `POST` request:

#### **Example (POST request)**:
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> postData() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: json.encode({
      'title': 'foo',
      'body': 'bar',
      'userId': 1,
    }),
  );

  if (response.statusCode == 201) {
    // If the server returns a 201 CREATED response, handle the response
    print('Data posted successfully');
  } else {
    // If the server returns an error, throw an exception
    throw Exception('Failed to post data');
  }
}
```

In this example, we send a `POST` request with JSON data to create a new post. We use the `json.encode()` method to convert the body into JSON format, set the headers, and handle the response.

---

## **4. Common Errors**
- **Timeout**: Sometimes, an API request can take too long. You can use `http.Client` to set a timeout duration.
- **Invalid JSON**: Ensure the API returns valid JSON if you're using `json.decode()`.

---

### **Flutter Docs Links**:
- [HTTP Package](https://pub.dev/packages/http)
- [Making HTTP Requests](https://flutter.dev/docs/cookbook/networking/fetch-data)
