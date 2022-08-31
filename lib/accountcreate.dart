import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'myproviders.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        key: const Key("2"),
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
            AnimatedContainer(
              width: double.infinity,
              height: size.height * (0.6876),
              duration: const Duration(milliseconds: 500),
              decoration: const BoxDecoration(
                color: Color.fromARGB(216, 82, 23, 193),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.white54,
                              fontFamily: 'Cairo',
                              fontSize: 18),
                        ),
                        TextField(
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
                              color: Colors.white54,
                              fontFamily: 'Cairo',
                              fontSize: 18),
                        ),
                        TextField(
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
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          style: TextStyle(
                              color: Colors.white54,
                              fontFamily: 'Cairo',
                              fontSize: 18),
                        ),
                        Consumer<myProvider>(
                          builder: ((context, value, child) {
                            return TextField(
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
                        onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
