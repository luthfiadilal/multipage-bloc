import 'package:flutter_bloc/flutter_bloc.dart';

// CounterBloc menggunakan versi terbaru dari Bloc
class CounterBloc extends Bloc<int, int> {
  CounterBloc() : super(0) {
    // Setiap event akan langsung memancarkan state baru
    on<int>((event, emit) {
      emit(event);
    });
  }
}
