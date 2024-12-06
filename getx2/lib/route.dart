import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => SecondPage())
      ],
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route Named dengan getX"),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.toNamed('/second');
        }, child: Text("Pindah ke halaman kedua")),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua"),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.back();
        }, child: Text("Kembali ke halaman pertama")),
      ),
    );
  }
}


