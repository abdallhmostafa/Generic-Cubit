import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic_cubit/core/base/base_cubit_state.dart';
import 'package:generic_cubit/core/utilities/show_toast.dart';

class BaseCubitListener<C extends Cubit<S>, S extends BaseCubitState<T>, T>
    extends StatelessWidget {
  const BaseCubitListener({
    super.key,
    this.onLoading,
    this.onSuccess,
    this.onError,
    this.successMessage,
  });
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
            /// optional loading state handling
            // If you want to show a loading indicator or toast, you can do it here.
            // For example:
            ShowToast.showToastLoading();
            onLoading?.call(context);
          },
          success: (T data, bool isCached) {
            ///  optional success state handling
            ShowToast.showToastSuccess(
              message: successMessage ?? 'Operation completed successfully',
            );
            onSuccess?.call(context, data);
          },

          failure: (String message) {
            /// optional failure state handling
            // Show an error toast or dialog
            // For example:
            ShowToast.showToastError(message: message);
            onError?.call(context, message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
