import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Hapus file berhasil.",
                  style: TextStyle(color: Colors.black),
                ),
                action: SnackBarAction(
                  label: "CANCEL",
                  onPressed: () {
                    print("Tidak jadi hapus produk");
                  },
                  textColor: Colors.red,
                ),
                backgroundColor: Colors.amber,
                duration: Duration(seconds: 5),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ));
            },
            child: Text("SHOW SNACKBAR")),
      ),
    );
  }
}
