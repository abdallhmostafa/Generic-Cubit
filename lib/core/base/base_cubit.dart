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
