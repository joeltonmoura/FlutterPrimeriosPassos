import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homoe Page'),
        ),
        body: Center(
          child: GestureDetector(
            child: Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              setState(() {
                counter++;
              });
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                child: Icon(Icons.remove),
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
              ),
              FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              )
            ],
          ),
        ));
  }
}
