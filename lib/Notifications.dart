import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      appBar: (AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Mark as read",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(84, 96, 206, 1),
                    decoration: TextDecoration.underline)),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          color: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
        elevation: 0,
      )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(
                fontFamily: 'Cairo',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(
                          width: 0.8,
                          color: Color.fromRGBO(228, 117, 139, 1),
                        )),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: const Text(
                      "Mentors",
                      style: TextStyle(
                          color: Color.fromRGBO(84, 96, 206, 1),
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Cairo'),
                    )),
                SizedBox(
                  width: size.width * (0.05),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(
                          width: 0.8,
                          color: Color.fromRGBO(228, 117, 139, 1),
                        )),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: const Text(
                      "Group sessions",
                      style: TextStyle(
                          color: Color.fromRGBO(84, 96, 206, 1),
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Cairo'),
                    ))
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text: "Starts in 1h. ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/teacher.PNG"),
                  ),
                  title: const Text(
                    "Sessions with Michael Scott",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("30m"),
                  ),
                ),
                const ListTile(
                  subtitle: Text("Explore and learn from the best ment.."),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images-icons/icon.PNG"),
                  ),
                  title: Text(
                    "This week's group sessions for you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("1d"),
                  ),
                ),
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text:
                              "Mentor Anna invited you for a closed group session",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "\n View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images-icons/nice.jpg"),
                  ),
                  title: const Text(
                    "UX design - Portofolio critique",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("3d"),
                  ),
                ),
                const ListTile(
                  subtitle: Text("Group session is scheduled today at 1pm"),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/teacher.PNG"),
                  ),
                  title: Text(
                    "Becoming a better UX researcher",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 129, 127, 127),
                        fontSize: 15),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("5d"),
                  ),
                ),
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text: "Starts in 1h. ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/nirvana.jpeg"),
                  ),
                  title: const Text(
                    "Sessions with Michael Scott",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("30m"),
                  ),
                ),
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text: "Starts in 1h. ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/teacher.PNG"),
                  ),
                  title: const Text(
                    "Sessions with Michael Scott",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("30m"),
                  ),
                ),
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text: "Starts in 1h. ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/teacher.PNG"),
                  ),
                  title: const Text(
                    "Sessions with Michael Scott",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("30m"),
                  ),
                ),
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text: "Starts in 1h. ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/teacher.PNG"),
                  ),
                  title: const Text(
                    "Sessions with Michael Scott",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("30m"),
                  ),
                ),
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text: "Starts in 1h. ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/teacher.PNG"),
                  ),
                  title: const Text(
                    "Sessions with Michael Scott",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("30m"),
                  ),
                ),
                ListTile(
                  subtitle: RichText(
                      text: const TextSpan(
                          text: "Starts in 1h. ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                            text: "View Details",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(84, 96, 206, 1),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Cairo'))
                      ])),
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images-icons/teacher.PNG"),
                  ),
                  title: const Text(
                    "Sessions with Michael Scott",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("30m"),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
