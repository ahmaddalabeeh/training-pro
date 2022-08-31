import 'package:flutter/material.dart';
import 'package:flutter_application_1/PageTwo.dart';
import 'package:flutter_application_1/myproviders.dart';
import 'package:provider/provider.dart';
import 'myproviders.dart';
import 'main.dart';

class Question3 extends StatefulWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => myProvider(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.grey)),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 90, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What brings you here?",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Cairo'),
              ),
              const Text(
                "Tell us how you are going to use the relationship from Connect",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: size.height * (0.08)),
              const Text("Select of that apply"),
              Row(
                children: [
                  Consumer<myProvider>(
                    builder: (context, hi, child) {
                      return InkWell(
                        onTap: () {
                          hi.buttonChange();
                        },
                        child: Container(
                          decoration: hi.box,
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text(
                              "Career related",
                              style:
                                  TextStyle(fontSize: 18, fontFamily: 'Cairo'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: size.width * (0.05),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromRGBO(228, 117, 139, 1),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        "College related",
                        style: TextStyle(fontSize: 18, fontFamily: 'Cairo'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * (0.05),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text("Any other?"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 17),
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(228, 117, 139, 1),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * (0.22),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      fixedSize:
                          MaterialStateProperty.all(const Size.fromWidth(370)),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)))),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageTwo(),
                        ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 20,
                        color: Color.fromARGB(216, 82, 23, 193),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
