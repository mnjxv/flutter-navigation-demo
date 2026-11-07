# Navigation Demo

A Flutter app demonstrating navigation with a side drawer, a bottom navigation bar, and named routes.

## Features

- **Bottom navigation bar**: switch between Home, Settings, and Profile.
- **Navigation drawer**: open Favorites, Friends, and Notifications pages.
- **Named routes** for the drawer pages.
- Material 3 theme.

## Getting Started

```bash
flutter pub get
flutter run
```

## Running Tests

```bash
flutter test
```

## Project Structure

```
lib/
├── main.dart
├── pages/
│   ├── nav_drawer.dart
│   ├── favorite_page.dart
│   ├── friends_page.dart
│   └── notification_page.dart
└── bottom_pages/
    ├── home_page.dart
    ├── setting_page.dart
    └── profile_page.dart
test/
└── widget_test.dart
```
