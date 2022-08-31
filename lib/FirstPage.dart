import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        key: Key("1"),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * (0.12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images-icons/icon2.PNG"),
                const Text(
                  "CONNECT",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 24,
                      color: Color.fromARGB(216, 82, 23, 193),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: size.height * (0.1),
            ),
            const Text(
              "Learn from the best mentors using ? free sessions",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20,
                color: Color.fromARGB(216, 82, 23, 193),
              ),
            ),
            SizedBox(
              height: size.height * (0.1),
            ),
            AnimatedContainer(
              width: double.infinity,
              height: size.height * (0.49),
              duration: const Duration(milliseconds: 500),
              decoration: const BoxDecoration(
                color: Color.fromARGB(216, 82, 23, 193),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(370)),
                            elevation: MaterialStateProperty.all(5),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Create an Account",
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 20,
                              color: Color.fromARGB(216, 82, 23, 193),
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(const BorderSide(
                                width: 0.9, color: Colors.white)),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(216, 82, 23, 193),
                            ),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(370)),
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child: SvgPicture.asset(
                                    "assets/images-icons/face.svg",
                                    color: Colors.white,
                                    width: size.width * (0.07),
                                  )),
                              const Text(
                                "Connect with Facebook",
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(const BorderSide(
                                width: 0.9, color: Colors.white)),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(216, 82, 23, 193),
                            ),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(370)),
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                  child: SvgPicture.asset(
                                    "assets/images-icons/google.svg",
                                    color: Colors.white,
                                    width: size.width * (0.07),
                                  )),
                              const Text(
                                "Connect with Google",
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "Already have an Account? ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          children: [
                        TextSpan(
                            text: "Log in",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold))
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
