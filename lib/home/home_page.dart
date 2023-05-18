import 'package:flutter/material.dart';
import 'increment_counter.dart';
import 'is_first_number.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  List<Container> _items = [];

  String getImageAccordingToCounter(int counter) {
    return isFirstNumber(counter) ? "assets/images/ananas.png" : counter % 2 == 0 ? "assets/images/poire.png" : "assets/images/pomme.png";
  }

  String getTitleAccordingToCounter(int counter) {
    return isFirstNumber(counter) ? "$counter : Nombre Premier" : counter % 2 == 0 ? "$counter : Pair" : "$counter : Impair";
  }



  void _counterButtonOnPressed() {
    setState(() {
      _counter++;
      _items.add(
        Container(
          color: _counter % 2 == 0 ? Colors.cyan : Colors.indigo,
          height: 70,
          child: Row(
            children: [
              Container(
                child: Image.asset(getImageAccordingToCounter(_counter))
              ),
              Container(
                  child: Text("$_counter", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),)
              )
            ],
          ),
        )
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(getTitleAccordingToCounter(_counter)),
      ),
      body: ListView.builder(scrollDirection: Axis.vertical, itemCount: _items.length, itemBuilder: (context, index) {
          return _items[index];
        },
      ),
      floatingActionButton: IncrementCounter(counterButtonOnPressed: _counterButtonOnPressed,),
    );
  }
}
