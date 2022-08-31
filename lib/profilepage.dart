import 'package:flutter/material.dart';
import 'package:country_icons/country_icons.dart';
import 'package:flutter_application_1/myproviders.dart';
import 'package:flutter_application_1/sessionbooking.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: ((context) => myProvider()),
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: size.height * (.15),
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color.fromRGBO(228, 117, 139, 1),
                  const Color.fromRGBO(84, 96, 206, 1).withOpacity(0.4)
                ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
                child: Stack(
                  alignment:
                      Alignment(size.width * (0.00005), size.height * (0.013)),
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images-icons/nice.jpg"),
                      radius: 50,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40, top: 10),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset(
                              "assets/images-icons/favorite.svg",
                              width: size.width * (0.08),
                              // height: size.height * ,
                              color: const Color.fromRGBO(245, 245, 248, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20, top: 15),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: SvgPicture.asset(
                                "assets/images-icons/dots.svg",
                                width: size.width * .08,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Ashlin Dagi",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("IN"),
                        ),
                        Image.asset('icons/flags/png/in.png',
                            scale: 4.5, package: 'country_icons'),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.cases_outlined,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: RichText(
                              text: const TextSpan(
                                  text: "Product Designer,",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 129, 127, 127),
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: " Amazon",
                                    style: TextStyle(
                                      color: Color.fromARGB(221, 129, 127, 127),
                                    ))
                              ])),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * (0.009),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images-icons/graduation.svg",
                          width: size.width * (0.05),
                          color: const Color.fromARGB(255, 129, 127, 127),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.5),
                          child: RichText(
                              text: const TextSpan(
                                  text: "M.Des in Interaction Design, ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 129, 127, 127),
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: "ND",
                                    style: TextStyle(
                                      color: Color.fromARGB(221, 129, 127, 127),
                                    ))
                              ])),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Container(
                        width: size.width * (0.9),
                        decoration: BoxDecoration(
                            border: const Border(),
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  const Color.fromRGBO(228, 117, 139, 1)
                                      .withOpacity(0.3),
                                  const Color.fromRGBO(84, 96, 206, 1)
                                      .withOpacity(0.3)
                                ])),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                              text: const TextSpan(
                                  text: "Be mentored by Ashlin for ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 91, 91, 91),
                                  ),
                                  children: [
                                TextSpan(
                                    text:
                                        "College queries, SOP review, Interview Techniques, Career Advice",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 69, 68, 68),
                                    ))
                              ])),
                        )),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 184, 184, 184)
                                .withOpacity(0.3),
                            border: const Border(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.warning_amber_rounded,
                                  color: Colors.grey,
                                ),
                                RichText(
                                    text: const TextSpan(
                                        text: "Next available session on ",
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              221, 104, 103, 103),
                                        ),
                                        children: [
                                      TextSpan(
                                        text: "4 September",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 129, 127, 127),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ])),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.042,
                          color: const Color.fromARGB(255, 82, 82, 82),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                ".",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 82, 82, 82),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(const BorderSide(
                                width: 0.8,
                                color: Colors.grey,
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(245, 245, 248, 1),
                              ),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.5),
                              )),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images-icons/telegram.svg",
                                  color: Colors.grey,
                                  width: size.width * 0.05,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Consumer<myProvider>(
                          builder: ((context, button, child) {
                            return ElevatedButton(
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                      const BorderSide(
                                          width: 0.8, color: Colors.grey)),
                                  backgroundColor:
                                      MaterialStateProperty.all(button.book),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.5),
                                  )),
                                ),
                                onPressed: () {
                                  button.booking();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BookingSession()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Book Session",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                    ),
                                  ),
                                ));
                          }),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(84, 96, 206, 1),
                                      width: 2))),
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              "About",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromRGBO(84, 96, 206, 1),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 129, 127, 127),
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Group Session",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 129, 127, 127),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Text(
                      "I am an enertgetic, action-oriented, idealist who loves solving complex problems and fastering communities",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 89, 88, 88),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Text(
                      "I've hired for multiple product role and mentored junior designers, Hit me for a",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 89, 88, 88),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text("more",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(84, 96, 206, 1),
                              decoration: TextDecoration.underline)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images-icons/speaking.svg",
                      width: size.width * (0.05),
                      color: Colors.black,
                    ),
                    const Text(
                      "  Language",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: size.width * 0.62),
                      child: const Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: RichText(
                    text: const TextSpan(
                        text: "Speaks ",
                        style:
                            TextStyle(color: Color.fromARGB(255, 89, 88, 88)),
                        children: [
                      TextSpan(
                          text: "English, Hindi",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ])),
              ),
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images-icons/idea.svg",
                      width: size.width * (0.04),
                      color: Colors.black,
                    ),
                    const Text(
                      "  Expertise",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: size.width * 0.62),
                      child: const Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
              ),
            ]),
          )),
    );
  }
}
