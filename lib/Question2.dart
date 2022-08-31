import 'package:flutter/material.dart';
import 'package:flutter_application_1/myproviders.dart';
import 'package:provider/provider.dart';
import 'Question3.dart';
import 'myproviders.dart';
import 'main.dart';

class Question2 extends StatefulWidget {
  const Question2({Key? key}) : super(key: key);

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => myProvider(),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.grey)),
          backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 90, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Choose your role",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Cairo'),
              ),
              const Text(
                "Choose only one.. don't worry you can always change later on",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: size.height * (0.09)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text(
                              "Mentor",
                              style:
                                  TextStyle(fontSize: 18, fontFamily: 'Cairo'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: size.width * (0.4)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromRGBO(228, 117, 139, 1),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        "Mentor",
                        style: TextStyle(fontSize: 18, fontFamily: 'Cairo'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * (0.379),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Question3(),
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
