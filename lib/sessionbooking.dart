import 'package:flutter/material.dart';
import 'package:flutter_application_1/myproviders.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingSession extends StatelessWidget {
  const BookingSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            const Text(
              "Session with Ashlin Dagi",
              style: TextStyle(
                fontFamily: 'Cairo',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: size.height * 0.028,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 184, 184, 184)
                        .withOpacity(0.25),
                    border: const Border(),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images-icons/warning.svg",
                              color: Colors.grey,
                              width: size.width * 0.04,
                            ),
                            const Text(
                              "   Request sent",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(221, 104, 103, 103),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(27, 5, 15, 0),
                          child: Text(
                            "Mentoring request is awaitng approval from Ashlin",
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 127, 127),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.110,
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
              height: size.height * 0.028,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images-icons/calendar.svg",
                    width: size.width * 0.05,
                    color: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Thursday, 4 September",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(221, 104, 103, 103),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 6),
              child: Row(
                children: const [
                  Icon(
                    Icons.access_time_sharp,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Thursday, 4 September",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(221, 104, 103, 103),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What do you expect from this session?\n",
                    style: TextStyle(
                      color: Color.fromARGB(255, 129, 127, 127),
                    ),
                  ),
                  const Text(
                    "Interview questions\n\n",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 104, 103, 103),
                    ),
                  ),
                  const Text(
                    "Ask Ashlin anything related to?\n",
                    style: TextStyle(
                      color: Color.fromARGB(255, 129, 127, 127),
                    ),
                  ),
                  const Text(
                    "UX Design",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 104, 103, 103),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    "Describe your challenges or pinpoints?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 129, 127, 127),
                    ),
                  ),
                  const Text(
                    "This helps the mentor to help you better\n",
                    style: TextStyle(
                        color: Color.fromARGB(255, 144, 142, 142),
                        fontSize: 12),
                  ),
                  const Text(
                    "I have been attending several interviews for the past few months. However not getting shortlisted. Please help me find out why.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 104, 103, 103),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
