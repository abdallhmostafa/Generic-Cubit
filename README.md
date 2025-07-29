Generic Cubit Pattern for Flutter
This project demonstrates a generic and reusable architecture for state management in Flutter using the flutter_bloc and freezed packages. The goal is to reduce boilerplate code when handling common asynchronous states like loading, success, and failure.

This pattern provides a clean, scalable, and type-safe foundation for your app's business logic.

✅ Features
Generic Base Classes: Reusable BaseCubit and BaseCubitState to handle common state transitions.

Type-Safe States: freezed is used to create immutable and type-safe state classes.

Automated Side-Effect Handling: A generic BaseCubitListener widget that automatically shows toasts or performs actions on state changes, keeping your UI clean.

Reduced Boilerplate: Drastically cuts down on the repetitive code needed for each feature's state management.

Scalable & Maintainable: The structure is easy to understand, extend, and maintain as your application grows.

📦 Core Components
The architecture is built around three core components.

1. BaseCubitState<T>
A generic freezed union that defines the possible states for any Cubit. T represents the type of data that will be held in the success state.

Dart

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
2. BaseCubit<T>
An abstract Cubit that your feature-specific Cubits will extend. It provides helper methods to emit the common states, simplifying your business logic.

Dart

// core/base/base_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic_cubit/core/base/base_cubit_state.dart';

abstract class BaseCubit<T> extends Cubit<BaseCubitState<T>> {
  BaseCubit() : super(const BaseCubitState.idle());

  /// Emit loading state
  void setLoadingState() => emit(const BaseCubitState.loading());

  /// Emit success state with data
  void setSuccessState({required T data, bool isCached = false}) =>
      emit(BaseCubitState.success(data: data, isCached: isCached));

  /// Emit error state with message
  void setErrorState(String message) => emit(BaseCubitState.failure(message));

  /// Reset to idle state
  void resetState() => emit(const BaseCubitState.idle());
}
3. BaseCubitListener<C, S, T>
A generic widget that listens to a BaseCubit and handles side effects like showing toasts for loading, success, or error states. This separates UI logic from side-effect logic.

Dart

// core/base/base_cubit_listener.dart
class BaseCubitListener<C extends Cubit<S>, S extends BaseCubitState<T>, T>
    extends StatelessWidget {
  // ... constructor ...
  final String? successMessage;
  final void Function(BuildContext context)? onLoading;
  final void Function(BuildContext context, T data)? onSuccess;
  final void Function(BuildContext context, String message)? onError;

  @override
  Widget build(BuildContext context) {
    return BlocListener<C, S>(
      listener: (context, state) {
        state.when(
          idle: () {},
          loading: () {
            ShowToast.showToastLoading();
            onLoading?.call(context);
          },
          success: (T data, bool isCached) {
            ShowToast.showToastSuccess(
              message: successMessage ?? 'Operation completed successfully',
            );
            onSuccess?.call(context, data);
          },
          failure: (String message) {
            ShowToast.showToastError(message: message);
            onError?.call(context, message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
🚀 How to Use
Follow these steps to implement the pattern for a new feature.

Step 1: Create Your Cubit
Create a new Cubit for your feature that extends BaseCubit<T>, where T is your success data type.

Dart

// home/logic/cubit_example.dart
import 'package:generic_cubit/core/base/base_cubit.dart';

class CubitExample extends BaseCubit<String> {
  Future<void> fetchData() async {
    try {
      setLoadingState();
      // Simulate a network call
      await Future.delayed(const Duration(seconds: 2));
      // On success
      setSuccessState(data: "Data fetched from API!");
      // Or uncomment to test failure
      // throw Exception("Could not fetch data.");
    } catch (e) {
      // On failure
      setErrorState(e.toString());
    }
  }
}
Step 2: Build Your UI
In your UI, use BlocProvider to provide the Cubit and BlocBuilder to build the UI based on the current state.

Dart

// home/home_view.dart
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitExample()..fetchData(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Home View')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CubitExample, BaseCubitState<String>>(
                builder: (context, state) {
                  return state.when(
                    idle: () => const Text('Idle State'),
                    loading: () => const CircularProgressIndicator(),
                    success: (data, isCached) => Text('Success: $data'),
                    failure: (message) => Text('Error: $message'),
                  );
                },
              ),
              // Add the listener in the next step
              const CubitExampleListener(),
            ],
          ),
        ),
      ),
    );
  }
}
Step 3: Handle Side Effects
Add the BaseCubitListener to your widget tree to automatically handle toasts and other side effects. You can provide optional callbacks for custom logic.

Dart

// home/logic/cubit_example_listener.dart
class CubitExampleListener extends StatelessWidget {
  const CubitExampleListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCubitListener<CubitExample, BaseCubitState<String>, String>(
      successMessage: 'Data was loaded!',
      onError: (context, message) {
        // You can add custom error handling here, like showing a dialog
        print("Custom error action: $message");
      },
      onSuccess: (context, data) {
        print("Custom success action with data: $data");
      },
    );
  }
}
And you're done! You now have a fully functional feature with clean separation of concerns and minimal boilerplate.
