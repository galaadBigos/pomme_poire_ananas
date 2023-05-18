import 'package:flutter/material.dart';

class IncrementCounter extends StatelessWidget {
  const IncrementCounter({Key? key, required this.counterButtonOnPressed}) : super(key: key);

  final Function counterButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: ()=> counterButtonOnPressed(),
      tooltip: "Increment",
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );;
  }
}
