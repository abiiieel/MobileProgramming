import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          title: Text("Snackbar Example"),
        ),
        body: SnackbarExample(),
      ),
    );
  }
}

class SnackbarExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Hello from snackbar"))
            );
          }, child: Text("Show normal Snackbar")),
          ElevatedButton(onPressed: () {
            Get.snackbar("Hello", "Ini snackbar GetX",
                snackPosition: SnackPosition.BOTTOM);
          }, child: Text("Show GetX Snackbar"))
        ],
      ),
    );
  }
}

