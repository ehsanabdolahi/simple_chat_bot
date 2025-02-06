# Simple Chat Bot
A Flutter-based chat bot application that demonstrates clean architecture, state management with Riverpod, and support for bidirectional text (RTL/LTR).


## Features
- 💬 Real-time chat interface
- 🤖 Simulated bot responses
- 📱 Material Design 3 (Material You)
- 🌐 Bidirectional text support (RTL/LTR)
- 🔄 State management with Riverpod
- 💉 Dependency injection using GetIt
- 🏗️ Clean Architecture pattern
- 🔙 Double-tap to exit functionality


## Architecture
The project follows Clean Architecture principles with the following structure:
lib/
├── constants/
│   └── categories/          # App-wide constants
├── di/
│   └── locator.dart         # Dependency injection setup
├── features/
│   └── chat_bot/
│       ├── data/            # Data layer
│       ├── domain/          # Domain layer
│       └── presentation/    # UI layer
└── main.dart


## Dependencies
- Flutter SDK: ^3.5.2
- hooks_riverpod: ^2.4.10
- riverpod_annotation: ^2.3.4
- flutter_hooks: ^0.20.5
- get_it: ^8.0.3
- freezed: ^2.5.7
- json_annotation: ^4.8.1


## Prerequisites
- Flutter SDK (^3.5.2)
- Dart SDK (^3.5.2)


## Installation
1. Clone the repository:
git clone https://github.com/yourusername/chat_bot.git
cd chat_bot
    
2.Install dependencies:
flutter pub get

3.Run code generation:
flutter pub run build_runner build --delete-conflicting-outputs

4.Run the app:
flutter run



## Code Generation
This project uses code generation for Riverpod providers and JSON serialization. To generate the required files, run:
flutter pub run build_runner build --delete-conflicting-outputs



## Features in Detail
Bidirectional Text Support
The app automatically detects and adjusts text direction based on the input language:
RTL for Arabic, Persian, and Hebrew characters
LTR for Latin and other scripts

State Management
Uses Riverpod for state management with:
Auto-disposing providers
Generated providers using riverpod_generator
Hooks for efficient widget lifecycle management

Clean Architecture
The project is structured in layers:
Data Layer: Repositories and data sources
Domain Layer: Use cases and entities
Presentation Layer: UI components and state management


