import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_multi_bloc/bloc/color_bloc.dart';
import 'package:state_multi_bloc/bloc/counter_bloc.dart';
import 'package:state_multi_bloc/ui/draft_page.dart';
import 'package:state_multi_bloc/ui/second_page.dart';

class MainPae extends StatelessWidget {
  const MainPae({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
          backgroundColor: color,
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BlocBuilder<CounterBloc, int>(
                  builder: (context, number) => Text(
                    number.toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text(
                    "Click To Cgange",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
