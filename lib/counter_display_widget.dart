import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Contagem:'),
          Text(
            '$number',
            style: TextStyle(
              fontSize: 36,
              color: setColor(),
            ),
          ),
        ],
      ),
    );
  }

  Color setColor() {
    if (number > 0) {
      return Colors.green;
    } else if (number < 0) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }
}
