import 'package:flutter/material.dart';
import 'tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  GridState createState() => GridState();
}

class GridState extends State<MyApp> {
  List<Item> gridItem = [
    Item(
      name: 'LIVING ROOM',
      isOn: false,
      image: 'livingroom.png',
    ),
    Item(
      name: 'DINING ROOM',
      isOn: false,
      image: 'diningroom.png',
    ),
    Item(
      name: 'MASTER BEDROOM',
      isOn: false,
      image: 'bedroom.png',
    ),
    Item(
      name: 'KITCHEN',
      isOn: false,
      image: 'kitchen.png',
    ),
    Item(
      name: 'PORCH LIGHT SWITCH',
      isOn: false,
      image: 'porchlight.png',
    ),
    Item(
      name: 'GATE LIGHT SWITCH',
      isOn: false,
      image: 'gatelamp.png',
    ),
  ];

  void toggleState(String name) {
    int gridIndex = gridItem.indexWhere((grid) => grid.name == name);
    if (gridIndex != -1) {
      setState(() {
        gridItem[gridIndex].isOn = !gridItem[gridIndex].isOn;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet of Things (IoT) Devices',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(title: Text('MY HOME >')),
        body: Part1Body(gridItem, toggleState),
      ),
    );
  }
}
