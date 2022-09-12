import 'package:flutter/material.dart';

import 'package:flutter_application_1/sign_in.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'auth_proivder.dart';
import 'myproviders.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AuthProvider authProvider;
  @override
  void initState() {
    super.initState();
    authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.emailController = TextEditingController();
    authProvider.passwordController = TextEditingController();
  }

  int _widgetId = 1;
  Widget _SecondPage() {
    var size = MediaQuery.of(context).size;
    return Container(
      key: const Key("2"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * (0.01),
          ),
          AnimatedContainer(
            color: const Color.fromARGB(216, 82, 23, 193),
            width: double.infinity,
            height: size.height * (1),
            duration: const Duration(milliseconds: 1500),
            child: CustomPaint(
              painter: CurvePainter(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      margin: EdgeInsets.only(top: size.height * 0.1),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.1),
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: 18),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.5),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: "Enter your Name",
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "E-mail",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: 18),
                        ),
                        TextFormField(
                          controller: authProvider.emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a valid email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.5),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: "Enter your E-mail",
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: 18),
                        ),
                        Consumer<myProvider>(
                          builder: ((context, value, child) {
                            return TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter a valid password";
                                }
                                return null;
                              },
                              controller: authProvider.passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: value.obstxt,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        value.PassWord();
                                      },
                                      icon: Icon(value.obstxt
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.5),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  hintText: "Enter your Password",
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8))),
                            );
                          }),
                        ),
                        const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
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
                        onPressed: () {
                          authProvider.createWithEmailAndPassword(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 20,
                              color: Color.fromARGB(216, 82, 23, 193),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _FirstPage() {
    var size = MediaQuery.of(context).size;
    return Container(
      key: const Key("1"),
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
            height: size.height * (0.0),
          ),
          AnimatedContainer(
            color: const Color.fromARGB(216, 82, 23, 193),
            width: double.infinity,
            height: size.height * (0.61),
            duration: const Duration(milliseconds: 1500),
            child: CustomPaint(
              painter: CurvePainter2(),
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.25),
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
                                      side: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(40)))),
                          onPressed: () {
                            _updateWidget();
                          },
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
                                      borderRadius:
                                          BorderRadius.circular(40)))),
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
                                      borderRadius:
                                          BorderRadius.circular(40)))),
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
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: RichText(
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
                          ])),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _updateWidget() {
    setState(() {
      _widgetId = _widgetId == 1 ? 2 : 1;
    });
  }

  Widget _renderWidget() {
    return _widgetId == 1 ? _FirstPage() : _SecondPage();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: ((context) => myProvider()),
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 600),
                    child: _renderWidget(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color.fromRGBO(245, 245, 248, 1);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width / 2, size.height / 3.5, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color.fromRGBO(245, 245, 248, 1);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
