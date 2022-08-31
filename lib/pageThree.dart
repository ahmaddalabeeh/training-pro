import 'package:flutter/material.dart';
import 'package:flutter_application_1/profilepage.dart';

class pageThree extends StatelessWidget {
  const pageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 1;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(2, 0, 2, 5),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavigationBar(
                unselectedItemColor: const Color.fromARGB(255, 95, 95, 95),
                currentIndex: index,
                selectedItemColor: const Color.fromRGBO(84, 96, 206, 1),
                selectedFontSize: 15,
                unselectedFontSize: 15,
                showUnselectedLabels: true,
                selectedIconTheme:
                    const IconThemeData(color: Color.fromRGBO(84, 96, 206, 1)),
                showSelectedLabels: true,
                unselectedLabelStyle: const TextStyle(
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(84, 96, 206, 1),
                ),
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.grey,
                        size: 35,
                      ),
                      label: "Home"),
                  const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search_rounded,
                        size: 35,
                      ),
                      label: "Search"),
                  const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.people_outline_rounded,
                        color: Colors.grey,
                        size: 35,
                      ),
                      label: "Network"),
                  BottomNavigationBarItem(
                      label: "Profile",
                      icon: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const profilePage()));
                        },
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage("assets/images-icons/nice.jpg"),
                        ),
                      ))
                ],
              ),
            )),
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.notifications_none_rounded,
                  size: 30,
                ),
                hintText: "Search members, sessions",
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor:
                    const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
              ),
            ),
          ),
          SizedBox(height: size.height * (0.04)),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: size.height * (0.05),
              child: ListView(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
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
                      "Product Design",
                      style: TextStyle(
                          color: Color.fromARGB(255, 95, 95, 95),
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Cairo'),
                    ),
                  ),
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
                      "IIT",
                      style: TextStyle(
                          color: Color.fromARGB(255, 95, 95, 95),
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Cairo'),
                    ),
                  ),
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
                      "User Experience",
                      style: TextStyle(
                          color: Color.fromARGB(255, 95, 95, 95),
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Cairo'),
                    ),
                  ),
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
                      "College Mentors",
                      style: TextStyle(
                          color: Color.fromARGB(255, 95, 95, 95),
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * (0.019),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              children: const [
                Text(
                  "Find out ...",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: double.infinity,
                  // margin: EdgeInsets.only(right: size.width * (0.4)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromRGBO(228, 117, 139, 1),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Mentors for your career goals",
                      style: TextStyle(
                        color: Color.fromARGB(255, 110, 110, 110),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                bottom: -4,
                child: Image.asset("assets/images-icons/studyinggirl.png",
                    scale: 6),
              ),
            ],
          ),
          SizedBox(
            height: size.height * (0.015),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: double.infinity,
                  // margin: EdgeInsets.only(right: size.width * (0.4)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromRGBO(228, 117, 139, 1),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Mentors for college queries",
                      style: TextStyle(
                        color: Color.fromARGB(255, 110, 110, 110),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                bottom: -8,
                child: Image.asset("assets/images-icons/boy.png", scale: 6),
              ),
            ],
          ),
          SizedBox(
            height: size.height * (0.015),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: double.infinity,
                  // margin: EdgeInsets.only(right: size.width * (0.4)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromRGBO(228, 117, 139, 1),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Group sessions for you",
                      style: TextStyle(
                        color: Color.fromARGB(255, 110, 110, 110),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                bottom: -13,
                child: Image.asset("assets/images-icons/reading.png", scale: 6),
              ),
            ],
          ),
          SizedBox(
            height: size.height * (0.015),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: double.infinity,
                  // margin: EdgeInsets.only(right: size.width * (0.4)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromRGBO(228, 117, 139, 1),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Support Blogs",
                      style: TextStyle(
                        color: Color.fromARGB(255, 110, 110, 110),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                bottom: -4,
                child: Image.asset("assets/images-icons/studyinggirl.png",
                    scale: 6),
              ),
            ],
          ),
          SizedBox(
            height: size.height * (0.035),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Recent searches",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text("Clear",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(84, 96, 206, 1),
                          decoration: TextDecoration.underline)),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: const [
              ListTile(
                title: Text("Mona Sainz"),
                trailing: Icon(
                  Icons.close,
                  size: 27,
                ),
                subtitle: Text("Mentor .Producr Designer"),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images-icons/teacher.PNG"),
                ),
              ),
              ListTile(
                title: Text("Mona Sainz"),
                trailing: Icon(
                  Icons.close,
                  size: 27,
                ),
                subtitle: Text("Mentor .Producr Designer"),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images-icons/teacher.PNG"),
                ),
              ),
              ListTile(
                title: Text("Mona Sainz"),
                trailing: Icon(
                  Icons.close,
                  size: 27,
                ),
                subtitle: Text("Mentor .Producr Designer"),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images-icons/teacher.PNG"),
                ),
              ),
              ListTile(
                title: Text("Mona Sainz"),
                trailing: Icon(
                  Icons.close,
                  size: 27,
                ),
                subtitle: Text("Mentor .Producr Designer"),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images-icons/teacher.PNG"),
                ),
              ),
              ListTile(
                title: Text("Mona Sainz"),
                trailing: Icon(
                  Icons.close,
                  size: 27,
                ),
                subtitle: Text("Mentor .Producr Designer"),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images-icons/teacher.PNG"),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
