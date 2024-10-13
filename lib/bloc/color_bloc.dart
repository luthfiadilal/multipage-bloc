import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Definisikan event
enum ColorEvent { to_blue, to_amber, to_pink }

// Definisikan ColorBloc dengan Bloc versi terbaru
class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.blue) {
    // Register handler untuk setiap event
    on<ColorEvent>((event, emit) {
      switch (event) {
        case ColorEvent.to_blue:
          emit(Colors.blue);
          break;
        case ColorEvent.to_amber:
          emit(Colors.amber);
          break;
        case ColorEvent.to_pink:
          emit(Colors.pink);
          break;
      }
    });
  }
}
