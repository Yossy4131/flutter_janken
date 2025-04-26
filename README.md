# Janken App

This is a simple rock-paper-scissors (じゃんけん) application built with Flutter. The app allows players to choose their hand from three options: Rock, Paper, or Scissors. The CPU randomly selects its hand, and the result is displayed shortly after the selection.

## Project Structure

The project consists of the following files:

- `lib/main.dart`: The entry point of the application. It uses the `runApp` function to start the app and display the home screen.
- `lib/screens/home_screen.dart`: Defines the home screen where players can select their hand using three buttons. When a button is pressed, the CPU's hand is randomly determined, and the app navigates to the result screen.
- `lib/screens/result_screen.dart`: Displays the result of the game. The result is shown in a popup after a few seconds, with a close button at the bottom that returns the user to the home screen.
- `lib/widgets/janken_button.dart`: Defines a custom button widget for selecting the janken hands. This file customizes the button's style and behavior.
- `pubspec.yaml`: Contains the project's dependencies and metadata, specifying the Flutter SDK version and required packages.

## How to Run

1. Ensure you have Flutter installed on your machine.
2. Clone this repository or download the project files.
3. Navigate to the project directory in your terminal.
4. Run `flutter pub get` to install the necessary dependencies.
5. Use `flutter run` to start the application on your preferred device or emulator.

Enjoy playing Janken!