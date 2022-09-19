import 'package:flutter/material.dart';
import 'package:login_valid/src/constants/imgs.dart';
import 'package:login_valid/src/constants/sizes.dart';
import 'package:login_valid/src/features/authentication/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: Container(
                height: 250,
                child: Image(
                  image: AssetImage(tOnBoardingImg2),
                  fit: BoxFit.fitHeight,
                ),
              )),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: animate ? 200 : -30,
              left: animate ? 40 : -30,
              child: Column(
                children: [
                  Text(
                    "Buchada",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "Apresents",
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              )),
          AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: animate ? 10 : -30,
              right: animate ? 0 : -30,
              child: Container(
                width: 120,
                height: 250,
                child: Image(
                  image: AssetImage(tOnBoardingImg1),
                ),
              )),
        ]),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
