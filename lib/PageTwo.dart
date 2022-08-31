import 'package:flutter/material.dart';
import 'package:flutter_application_1/Question2.dart';
import 'package:flutter_application_1/calendar.dart';
import 'package:flutter_application_1/myproviders.dart';
import 'package:flutter_application_1/pageThree.dart';
import 'package:provider/provider.dart';
import 'Notifications.dart';
import 'myproviders.dart';
import 'main.dart';
import 'Question1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: CircleAvatar(
              radius: size.height * (0.03),
              backgroundColor: const Color.fromARGB(152, 228, 222, 222),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calendar()));
                  },
                  icon: const Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.grey,
                    size: 30,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: size.height * (0.03),
              backgroundColor: const Color.fromARGB(152, 228, 222, 222),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Notifications()));
                  },
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.grey,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      text: "Hello, ",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.black,
                        fontSize: 24,
                      ),
                      children: [
                    TextSpan(
                        text: "Riya",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])),
              ElevatedButton(
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(
                        width: 0.8,
                        color: Color.fromRGBO(228, 117, 139, 1),
                      )),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const pageThree()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.person_outlined,
                          color: Color.fromRGBO(228, 117, 139, 1),
                          size: 30,
                        ),
                      ),
                      Text(
                        "Update profile",
                        style: TextStyle(
                            color: Color.fromRGBO(84, 96, 206, 1),
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Cairo'),
                      ),
                    ],
                  )),
              SizedBox(
                height: size.height * (0.05),
              ),
              Container(
                width: size.width * (0.9),
                decoration: BoxDecoration(
                    border: const Border(),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color.fromRGBO(228, 117, 139, 1)
                              .withOpacity(0.3),
                          const Color.fromRGBO(84, 96, 206, 1).withOpacity(0.3)
                        ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.check_circle,
                            size: 22,
                            color: Color.fromRGBO(84, 96, 206, 1),
                          ),
                          Text(
                            "  Sessions for today",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: Color.fromRGBO(84, 96, 206, 1)),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 36,
                      ),
                      child: Text("Session with Michael Scott"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 36,
                        top: 5,
                      ),
                      child: Text("Today, 10.00 - 10.30 am"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 36, top: 5),
                      child: Text(
                        "Join now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(84, 96, 206, 1),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * (0.05),
              ),
              const Text(
                "Top mentors for you",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo",
                    fontSize: 20),
              ),
              SizedBox(
                height: size.height * (0.3),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images-icons/teacher.jpeg")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ashley Young  (IN)",
                              style: TextStyle(
                                color: Color.fromRGBO(245, 245, 248, 1),
                              ),
                            ),
                            const Text("Produc Designer",
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 7),
                              child: Text("Amazon | NID",
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                  )),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("Career Advice",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("SOP Review",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("College Queries",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("Interview tec.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (0.05),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images-icons/teacher.jpeg")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ashley Young  (IN)",
                              style: TextStyle(
                                color: Color.fromRGBO(245, 245, 248, 1),
                              ),
                            ),
                            const Text("Produc Designer",
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 7),
                              child: Text("Amazon | NID",
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                  )),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("Career Advice",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("SOP Review",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("College Queries",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("Interview tec.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (0.05),
                    ),
                    Container(
                      //  width: size.width * (0.6),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images-icons/teacher.jpeg")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ashley Young  (IN)",
                              style: TextStyle(
                                color: Color.fromRGBO(245, 245, 248, 1),
                              ),
                            ),
                            const Text("Produc Designer",
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 7),
                              child: Text("Amazon | NID",
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                  )),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("Career Advice",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("SOP Review",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("College Queries",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("Interview tec.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * (0.05),
              ),
              const Text(
                "Recommended group sessions",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo",
                    fontSize: 20),
              ),
              SizedBox(
                height: size.height * (0.3),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images-icons/grooup.jpg")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ashley Young  (IN)",
                              style: TextStyle(
                                color: Color.fromRGBO(245, 245, 248, 1),
                              ),
                            ),
                            const Text("Produc Designer",
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 7),
                              child: Text("Amazon | NID",
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                  )),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("Career Advice",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("SOP Review",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("College Queries",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("Interview tec.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (0.05),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images-icons/grooup.jpg")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ashley Young  (IN)",
                              style: TextStyle(
                                color: Color.fromRGBO(245, 245, 248, 1),
                              ),
                            ),
                            const Text("Produc Designer",
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 7),
                              child: Text("Amazon | NID",
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                  )),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("Career Advice",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("SOP Review",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("College Queries",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("Interview tec.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (0.05),
                    ),
                    Container(
                      //  width: size.width * (0.6),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images-icons/group.jpg")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ashley Young  (IN)",
                              style: TextStyle(
                                color: Color.fromRGBO(245, 245, 248, 1),
                              ),
                            ),
                            const Text("Produc Designer",
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 7),
                              child: Text("Amazon | NID",
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 245, 248, 1),
                                  )),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("Career Advice",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(245, 245, 248, 1),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    child: Text("SOP Review",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("College Queries",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          245, 245, 248, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 8, 15, 8),
                                      child: Text("Interview tec.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
