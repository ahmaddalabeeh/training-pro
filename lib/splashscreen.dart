import 'package:flutter/material.dart';
import 'package:flutter_application_1/myHomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), (() {}));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => const MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(216, 82, 23, 193),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images-icons/icon2.PNG",
              ),
              const Text(
                "CONNECT",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 33,
                    color: Color.fromARGB(255, 11, 164, 230),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
