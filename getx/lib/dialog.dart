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
          title: Text("Dialog Example"),
        ),
        body: DialogExample(),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Hello"),
                  content: Text("Ini Dialog Normal"),
                  actions: [
                    TextButton(onPressed: () => Navigator.pop(context),
                        child: Text("Close"))
                  ],
                )
            );
          }, child: Text("Show normal dialog")),
          ElevatedButton(onPressed: () {
            Get.defaultDialog(
                title: "Hello",
                middleText: "this is a GetX Dialog",
                actions: [
                  TextButton(onPressed: () => Navigator.pop(context),
                      child: Text("Close"))
                ]
            );
          }, child: Text("Show GetX Dialog"))
        ],
      ),
    );
  }
}


