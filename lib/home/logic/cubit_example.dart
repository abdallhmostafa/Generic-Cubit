import 'package:generic_cubit/core/base/base_cubit.dart';

/// Example Cubit implementation 
/// Add your Custom Data Type
class CubitExample extends BaseCubit<String> {
  Future<void> fetchData() async {
    setLoadingState();
    try {
      await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
      // Simulate a network call
      setSuccessState(data: 'Fetched Data', isCached: false);
    } catch (e) {
      setErrorState('Failed to fetch data');
    }
  }
}
