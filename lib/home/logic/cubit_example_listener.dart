import 'package:flutter/material.dart';
import 'package:generic_cubit/core/base/base_cubit_listener.dart';
import 'package:generic_cubit/core/base/base_cubit_state.dart';
import 'package:generic_cubit/core/utilities/show_toast.dart';
import 'package:generic_cubit/home/logic/cubit_example.dart';

class CubitExampleListener extends StatelessWidget {
  const CubitExampleListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCubitListener<CubitExample, BaseCubitState<String>, String>(
      onError: (context, state) {
        ShowToast.showToastError(message: state);
      },
    );
  }
}
