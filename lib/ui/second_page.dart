import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_multi_bloc/bloc/color_bloc.dart';
import 'package:state_multi_bloc/bloc/counter_bloc.dart';
import 'package:state_multi_bloc/ui/draft_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
          backgroundColor: color,
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BlocBuilder<CounterBloc, int>(
                  builder: (context, number) => GestureDetector(
                    onTap: () {
                      counterBloc.add(number + 1);
                    },
                    child: Text(
                      number.toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          shape:
                              MaterialStateProperty.all((color == Colors.blue)
                                  ? CircleBorder(
                                      side: BorderSide(
                                      color: Colors.black,
                                      width: 3.0,
                                    ))
                                  : CircleBorder())),
                      onPressed: () {
                        colorBloc.add(ColorEvent.to_blue);
                      },
                      child: Container(),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          shape:
                              MaterialStateProperty.all((color == Colors.amber)
                                  ? CircleBorder(
                                      side: BorderSide(
                                      color: Colors.black,
                                      width: 3.0,
                                    ))
                                  : CircleBorder())),
                      onPressed: () {
                        colorBloc.add(ColorEvent.to_amber);
                      },
                      child: Container(),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.pink),
                          shape:
                              MaterialStateProperty.all((color == Colors.pink)
                                  ? CircleBorder(
                                      side: BorderSide(
                                      color: Colors.black,
                                      width: 3.0,
                                    ))
                                  : CircleBorder())),
                      onPressed: () {
                        colorBloc.add(ColorEvent.to_pink);
                      },
                      child: Container(),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
