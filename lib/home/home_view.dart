import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic_cubit/core/base/base_cubit_state.dart';
import 'package:generic_cubit/home/logic/cubit_example.dart';
import 'package:generic_cubit/home/logic/cubit_example_listener.dart';

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
                    idle: () => const Text(
                      'Idle State',
                      style: TextStyle(fontSize: 24),
                    ),
                    loading: () => const CircularProgressIndicator(),
                    success: (data, isCached) =>
                        Text('Success: $data', style: TextStyle(fontSize: 24)),
                    failure: (message) =>
                        Text('Error: $message', style: TextStyle(fontSize: 24)),
                  );
                },
              ),
              CubitExampleListener(),
            ],
          ),
        ),
      ),
    );
  }
}
