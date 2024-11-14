import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import './login.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage ({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "Ini Judulnya",
            body: "Ini bodynya",
            image: Center(
              child: Container(
                width: 350,
                height: 350,
                child: Lottie.network(
                  "assets/lotties/sepeda.json",
                  fit: BoxFit.contain,
                ),
              ),
            )
        ),PageViewModel(
            title: "Ini Judulnya",
            body: "Ini bodynya",
            image: Center(
              child: Container(
                width: 350,
                height: 350,
                child: Lottie.network(
                  "assets/lotties/jalan.json",
                  fit: BoxFit.contain,
                ),
              ),
            )
        ),
      ],
      done: const Text("Login", style: TextStyle(fontWeight: FontWeight.w600)),
      showNextButton: true,
      next: Text("Next >>>"),
      onDone: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (cocntext) => LoginPage(),
        ),
        );
      },
    );
  }
}