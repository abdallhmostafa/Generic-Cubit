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
