import 'package:flutter/material.dart';
import 'package:flutter_application_1/Question2.dart';
import 'package:flutter_application_1/myproviders.dart';
import 'package:provider/provider.dart';
import 'myproviders.dart';
import 'main.dart';

class QuestioneOne extends StatefulWidget {
  const QuestioneOne({Key? key}) : super(key: key);

  @override
  State<QuestioneOne> createState() => _QuestioneOneState();
}

class _QuestioneOneState extends State<QuestioneOne> {
  TextEditingController controller1 = TextEditingController();
  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: ((context) => myProvider()),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 248, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 130, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Field for mentorship",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Cairo'),
                ),
                const Text(
                  "Connect recommends the best mentors based on your field of interest",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: size.height * (0.1),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Maxium 3 choices",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Consumer<myProvider>(
                  builder: ((context, change, child) {
                    return Column(
                      children: [
                        TextField(
                          controller: controller1,
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              suffixIcon: IconTheme(
                                data: const IconThemeData(color: Colors.grey),
                                child: IconButton(
                                  icon: change.thisIcon,
                                  onPressed: () {
                                    change.callButton();
                                  },
                                ),
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.5),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: "Type \"Product Designer\".",
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.8))),
                        ),
                        SizedBox(
                          height: size.height * (0.03),
                        ),
                        Visibility(
                          visible: change.isvisible,
                          child: Container(
                            margin: EdgeInsets.only(right: size.width * (0.4)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color.fromRGBO(228, 117, 139, 1),
                                      Color.fromRGBO(84, 96, 206, 1)
                                    ])),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 10, 10, 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller1.text,
                                    textAlign: TextAlign.center,
                                  ),
                                  const Icon(
                                    Icons.cancel,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * (0.35),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(245, 245, 248, 1),
                                ),
                                fixedSize: MaterialStateProperty.all(
                                    const Size.fromWidth(370)),
                                elevation: MaterialStateProperty.all(5),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Question2(),
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
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
