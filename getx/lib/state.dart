import 'package:flutter/material.dart';
import 'package:get/get.dart';

//controller getX
class CounterController extends GetxController{
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}

//main
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management Example"),
        ),
        body: Column(
          children: [
            StatelessExample(),
            StatefulExample(),
            GetXExample(),
          ],
        ),
      ),
    );
  }
}

//stateless widget example
class StatelessExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello from Stateless Widget"),
    );
  }
}

//stateful widget example
class StatefulExample extends StatefulWidget {

  @override
  _StatefulWidgetExampleState createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Counter : $counter"),
        ElevatedButton(onPressed: () {
          setState(() {
            counter++;
          });
        }, child: Text("Increment Stateful"))
      ],
    );
  }
}

//GetX state management
class GetXExample extends StatelessWidget {
  final CounterController c = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Text("Counter : ${c.counter}")),
        ElevatedButton(onPressed: c.increment,
            child: Text("Increment with GetX"))
      ],
    );
  }
}



