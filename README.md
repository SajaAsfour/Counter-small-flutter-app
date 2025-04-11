# 📱 Flutter Counter App using BLoC

A simple counter application built using **Flutter** and **BLoC (Cubit)** state management. This app demonstrates the basics of using Cubit to manage and update UI state reactively.

## 🚀 Features

- Simple UI with a counter display
- Increment and decrement buttons
- State management using `flutter_bloc` and `Cubit`

## 🧠 State Management

This app uses the **Cubit** class from the `flutter_bloc` package to manage state changes.

- `CounterCubit`: Holds the logic for incrementing and decrementing the counter.
- `CounterState`: Represents the state of the counter (Initial, Increment, Decrement).

### Main Files Overview

- `counter_cubit.dart`: Contains the `CounterCubit` class with `increment()` and `decrement()` methods.
- `counter_state.dart`: Defines different states (`CounterInitial`, `Increment`, `Decrement`).
- `counter_screen.dart`: The UI of the app using `BlocBuilder` to reflect state changes.

## 📦 Dependencies

Add these to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.2
```

Run `flutter pub get` to install the packages.
