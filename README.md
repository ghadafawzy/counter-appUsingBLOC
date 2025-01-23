# bloc_app

This Flutter project demonstrates the use of the BLoC (Business Logic Component) pattern 
to manage state efficiently. The app includes two BLoCs: one for managing a counter and 
another for toggling between light and dark themes. It also showcases the use of BlocListener,
BlocBuilder, and BlocConsumer.

## Features

1- CounterBloc: Handles integer counter values (increment and decrement functionality).
2- ThemeBloc: Toggles the app theme between light and dark modes.
3- UI Updates:
- BlocListener: Displays a SnackBar when the counter reaches a specific value.
- BlocBuilder: Dynamically updates the UI based on the counter value.
- BlocConsumer: Combines listening and building in one widget.

## Code Explanation
# BLoC Implementation
- CounterBloc:
Contains IncrementCounterEvent and DecrementCounterEvent.
Updates the counter state and emits the new state.
- ThemeBloc:
Contains ToggleThemeEvent to switch between light and dark themes.
Emits the updated theme state.
- UI Widgets
1- CounterWidget: Displays the current counter value and provides increment/decrement buttons.
2- HomeScreen: Combines the counter and theme functionality in one screen.
- State Management
1- BlocBuilder: Updates the counter value dynamically.
2- BlocListener: Listens for specific state changes to show a SnackBar.
3- BlocConsumer: Combines both building and listening for state changes.

## How to Run
1- Clone the repository: git clone <repository-url> cd <repository-name>
2- Install dependencies: flutter pub get
3- Run the app: flutter run 