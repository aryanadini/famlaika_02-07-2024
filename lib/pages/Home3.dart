import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants/colors.dart';
import '../widgets/Custom_BottomLeftCurveClipper.dart';

class Home3 extends StatefulWidget {
  const Home3({super.key});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  List<String> siblingimages = [
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg",
    "assets/images/img_intersect_1.png"
  ];
  List<String> siblingnames = ["a", "b", "c", "d", "e", "f"];
  String? siblingimg;
  String? siblingnme;
  bool selected = false;

  @override
  void initState() {
    super.initState();
    siblingimg = siblingimages[0];
    siblingnme = siblingnames[0];
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var count = 4;
    var widthFactor = .5;

    void change() {
      setState(() {
        count = siblingimages.length;
        widthFactor = 1.0;
      });
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          backgroundColor: Color(0xFF262626),
          iconTheme: IconThemeData(color: Colors.amber),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          title: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/img_logo.png",
              height: 35,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.amber),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.amber),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: AppColors.primaryColor,
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Container(
                  height: 85,
                  decoration: BoxDecoration(color: Colors.black),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      "Arya Nandini",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Figtree',
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.lightGreen,
                          size: 14,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Active",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Icon(Icons.account_circle, color: Colors.white),
                    title: const Text(
                      ' My Profile ',
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.near_me_outlined, color: Color(0xFFFFFFFF)),
                    title: const Text(' Request ', style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo, color: Color(0xFFFFFFFF)),
                    title: const Text(' Gallery Access ', style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.description, color: Color(0xFFFFFFFF)),
                    title: const Text(' Activity ', style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person_add_alt_1, color: Color(0xFFFFFFFF)),
                    title: const Text(' Invite Person ', style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings, color: Color(0xFFFFFFFF)),
                    title: const Text('Settings', style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 220)),
                  ListTile(
                    leading: const Icon(Icons.logout, color: Color(0xFFFFFFFF)),
                    title: const Text('Log Out', style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      // Handle logout action here
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  ClipPath(
                    clipper: BottomLeftCurveClipper(),
                    child: Container(
                      height: 110,
                      color: Color(0xFF262626),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 0.02),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 12),
                                Stack(children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xFF2B2B2B),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.person),
                                          alignment: Alignment.center,
                                          iconSize: 35,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 25,
                                    right: 2,
                                    left: 45,
                                    child: Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.amber,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: EdgeInsets.only(top: 0, left: 2),
                                  child: Text(
                                    "Your Story",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Figtree',
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 12,
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
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7, top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your Family",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              Text(
                                "2 members",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.penToSquare, color: Color(0xFFFFFFFF), size: 20),
                          onPressed: () {
                            // Add your edit button action here
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 630,
                    child: Stack(
                      children: [
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.1,
                          left: (MediaQuery.of(context).size.width * 0.5) - 15,
                          child: Image(
                            image: AssetImage('assets/images/img_heart.png'),
                            height: 24,
                            width: 24,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.08,
                          left: (MediaQuery.of(context).size.width * 0.5) - 16,
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                            height: 20,
                            endIndent: 20,
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    mainAxisExtent: 115,
                                    crossAxisSpacing: 1,
                                  ),
                                  itemCount: siblingimages.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          siblingimg = siblingimages[index];
                                          siblingnme = siblingnames[index];
                                          selected = !selected;
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              CircleAvatar(
                                                radius: 35,
                                                backgroundColor: Color(0xFF2B2B2B),
                                                backgroundImage: AssetImage(siblingimages[index]),
                                              ),
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.amber,
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 13,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              siblingnames[index],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Figtree',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              Divider(
                                thickness: 1.0,
                                color: Colors.grey,
                                indent: MediaQuery.of(context).size.width * 0.1,
                                endIndent: MediaQuery.of(context).size.width * 0.1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
