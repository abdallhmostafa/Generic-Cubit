# Generic Cubit Pattern for Flutter

This project demonstrates a generic and reusable architecture for state management in Flutter using the **`flutter_bloc`** and **`freezed`** packages. The goal is to reduce boilerplate code when handling common asynchronous states like **loading**, **success**, and **failure**.

This pattern provides a clean, scalable, and type-safe foundation for your app's business logic.

---

## ✅ Features

* **Generic Base Classes**: Reusable `BaseCubit` and `BaseCubitState` to handle common state transitions.
* **Type-Safe States**: `freezed` is used to create immutable and type-safe state classes.
* **Automated Side-Effect Handling**: A generic `BaseCubitListener` widget that automatically shows toasts or performs actions on state changes, keeping your UI clean.
* **Reduced Boilerplate**: Drastically cuts down on the repetitive code needed for each feature's state management.
* **Scalable & Maintainable**: The structure is easy to understand, extend, and maintain as your application grows.

---

## 📦 Core Components

The architecture is built around three core components.

### 1. `BaseCubitState<T>`

A generic `freezed` union that defines the possible states for any Cubit. `T` represents the type of data that will be held in the success state.

```dart
// core/base/base_cubit_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_cubit_state.freezed.dart';

@freezed
abstract class BaseCubitState<T> with _$BaseCubitState<T> {
  const factory BaseCubitState.idle() = IdleState<T>;
  const factory BaseCubitState.loading() = LoadingState<T>;
  const factory BaseCubitState.success({
    required T data,
    required bool isCached,
  }) = SuccessState<T>;
  const factory BaseCubitState.failure(String message) = FailureState<T>;
}
