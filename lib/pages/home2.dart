
import 'package:famlaika1/constants/DisplaySibling.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../constants/colors.dart';
import '../widgets/Custom_BottomLeftCurveClipper.dart';


class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List<String> siblingimages = [
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg",
    "assets/images/img_intersect_1.png"

  ];
  List<String> siblingnames = ["a", "b", "c", "d", "e","f"];
  String? siblingimg;
  String? siblingnme;
  bool selected = false;
  ScrollController _scrollController=ScrollController();
  bool isScrolledToEnd=false;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    siblingimg = siblingimages[0];
    siblingnme = siblingnames[0];
    _scrollController.addListener(_scrollListener );
  }
  void _scrollListener(){
    if (_scrollController.position.atEdge){
      bool isTop=_scrollController.position.pixels==0;
      if(!isTop){
        setState(() {
          isScrolledToEnd=true;
        });
      }
    }else{
      setState(() {
        isScrolledToEnd=false;
      });
    }
  }
  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var count = 4;
    var widthFactor = .5;
    void change() {
      print("calling");
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
          // Change the drawer icon color here
          leading: Builder(
            builder: (context) =>
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
          ),

          title: Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/img_logo.png", height: 35,),),
          actions: [
            IconButton(onPressed: () {},
                icon: Icon(Icons.search, color: Colors.amber,)),
            IconButton(onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.amber,))

          ],


        ),
        drawer: Drawer(
          backgroundColor: AppColors.primaryColor,
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [

              Padding(
                padding: EdgeInsets.only(top: 12,),
                child:
                Container(
                  height: 85,
                  decoration: BoxDecoration(
                      color: Colors.black

                  ),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text("Arya Nandini", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Figtree',
                        color: Color(0xFFFFFFFF)),),
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
                    leading: const Icon(
                      Icons.account_circle, color: Colors.white,),
                    title: const Text(' My Profile ',
                      style: TextStyle(color: Color(0xFFFFFFFF)),),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                        Icons.near_me_outlined, color: Color(0xFFFFFFFF)),
                    title: const Text(' Request ',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo, color: Color(0xFFFFFFFF)),
                    title: const Text(' Gallery Access ',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                        Icons.description, color: Color(0xFFFFFFFF)),
                    title: const Text(' Activity ',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                        Icons.person_add_alt_1, color: Color(0xFFFFFFFF)),
                    title: const Text(' Invite Person ',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                        Icons.settings, color: Color(0xFFFFFFFF)),
                    title: const Text(
                        'Settings', style: TextStyle(color: Color(0xFFFFFFFF))),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 220)),

                  ListTile(
                    leading: const Icon(Icons.logout, color: Color(0xFFFFFFFF)),
                    title: const Text('Log Out',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
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
                    clipper: BottomLeftCurveClipper(

                    ),
                    child: Container(
                      height: 110,
                      color: Color(0xFF262626),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 0.02,),
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
                                SizedBox(height: 12,),
                                Stack(
                                    children: [
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
                                              color: Colors.amber),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                        ),
                                      ),
                                    ]
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 0, left: 2),
                                  child: Text("Your Story", style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Figtree',
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 12),),)

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
                          padding: const EdgeInsets.only(left: 7,top: 25),
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
                          icon: FaIcon(FontAwesomeIcons.penToSquare,color:Color(0xFFFFFFFF) ,size: 20,),
                          onPressed: () {
                            // Add your edit button action here
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height:  630,
                      child: Stack(
                        children: [
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.1,
                            left: (MediaQuery.of(context).size.width * 0.5) - 15,
                            child: Image(image: AssetImage(
                                'assets/images/img_heart.png'),
                              height: 24, width: 24,
                              alignment: Alignment.topCenter,

                            ),),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.15,
                              left: (MediaQuery.of(context).size.width * 0.5) - 1,
                              child: CContainer(
                                cwidth: 1,
                                cheight: MediaQuery.of(context).size.height * 0.095,
                              )
                          ), // heart line
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.245,
                              left: (MediaQuery.of(context).size.width * 0.25),
                              child: CContainer(
                                  cheight: 1,
                                  cwidth:
                                  selected == false ?  (MediaQuery.of(context).size.width * 0.553) :
                                  isScrolledToEnd==false?
                                  (MediaQuery.of(context).size.width * 0.8):(MediaQuery.of(context).size.width * 0.51)

                                // cwidth:selected == false
                                // ? (MediaQuery.of(context).size.width * 0.5535) : (MediaQuery.of(context).size.width * 0.509)

                              )),
                          ///above sibling
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.245,
                              left: (MediaQuery.of(context).size.width * 0.25),
                              child: CContainer(
                                cheight: (MediaQuery.of(context).size.width * 0.51),
                                cwidth: 1,
                              )),

                          ///near sibling
                          selected==false?
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.245,
                              left: (MediaQuery.of(context).size.width * 0.4),
                              child: CContainer(
                                cheight: (MediaQuery.of(context).size.width * 0.3),
                                cwidth: 1,
                              )): Container(),

                          ///first sibilng line

                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.531,
                              left: (MediaQuery.of(context).size.width * 0.5) - 1,
                              child: CContainer(
                                cwidth: 1,
                                cheight: MediaQuery.of(context).size.height * 0.115,
                              )

                          ),

                          ///child line
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.53,
                              left: (MediaQuery.of(context).size.width * 0.25),
                              child: CContainer(
                                cheight: 1,
                                cwidth: (MediaQuery.of(context).size.width * 0.5),
                              )),
                          /// me to spouse
                            selected == false ? Positioned(
                              top: MediaQuery.of(context).size.height * 0.29,
                              left: (MediaQuery.of(context).size.width * 0.4) - 48,
                              child: DisplaySibling(
                                imagehgt: 70,
                                imagewdt: 70,
                                imagebradius: 40,
                                cthgt: 66,
                                ctwdt: 110,
                                imageUrl: siblingimages[0],
                                persongname: siblingnames[0],
                                personrelation: "Sibling",
                              ),
                            )///first sibling
                          :Positioned(
                            top: MediaQuery.of(context).size.height * 0.29,
                            left: (MediaQuery.of(context).size.width * 0.42) - 55,
                            child: Container(
                              color: Colors.transparent,
                              height: 10,

                              width: 10,
                              // child: DisplaySibling(
                              //   imagehgt: 80,
                              //   imagewdt: 80,
                              //   imagebradius: 40,
                              //   cthgt: 56,
                              //   ctwdt: 110,
                              //   imageUrl: siblingimages[0],
                              //   persongname: siblingnames[0],
                              //   personrelation: "Sibling",
                              // ),
                            ),
                          ),

                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.245,
                            left: selected==false ?((MediaQuery.of(context).size.width * 0.55) - 22.5):((MediaQuery.of(context).size.width*0.32)-22.5),
                            // left: (MediaQuery.of(context).size.width * 0.648) - 22.5,
                            child: selected == false
                                ? Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.063),
                              child: Container(
                                height: 80,
                                width: 480,

                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: count >= 4 ?5 : siblingimages
                                      .length + 1,
                                  itemBuilder: (context, index) =>
                                  !(index == count)
                                      ? InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () {
                                      change();
                                      setState(() {
                                        siblingimg = siblingimages[index];
                                        siblingnme = siblingnames[index];
                                      });
                                    },
                                    child: Align(
                                      widthFactor: widthFactor,
                                      child: DisplaySmallWidget(
                                        siblingname: siblingnames[index],
                                        sinblingimage:
                                        AssetImage("${siblingimages[index]}"),
                                        simagehgt: 40,
                                        simagewdt: 40,
                                        simagebradius: 20,
                                      ),
                                    ),
                                  )
                                      : InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () {
                                      change();
                                      setState(() {
                                        selected = true;
                                        siblingimg = siblingimages[index];
                                        siblingnme = siblingnames[index];
                                      });
                                    },
                                    child: Align(
                                      widthFactor: widthFactor,
                                      child: DisplaySmallWidget(
                                        simagehgt: 40,
                                        simagewdt: 40,
                                        simagebradius: 20,
                                        stext: "+2",
                                        siblingname: '',
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            )
                              //   : Padding(
                              // padding: const EdgeInsets.only(left: 20.0),
                              : Container(
                                height: MediaQuery.of(context).size.height * 0.226,

                                width: MediaQuery.of(context).size.height * 0.35,/// show all frames
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: (){
                                    setState(() {
                                      selected =false;
                                    });
                                  },
                                child: ListView.builder(
                                  controller: _scrollController,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: siblingimages.length,
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 2.0,right:30),
                                      child: Container(
                                        height: MediaQuery.of(context).size.height * 0.1 + 80,
                                        width: 110,
                                        child: Stack(children: [
                                          Positioned(
                                            top: -10,
                                            left: 110 / 2,
                                            child: CContainer(
                                              cwidth: 1,
                                              cheight: MediaQuery.of(context).size.height * 0.1,
                                            ),
                                          ), /// above siblings line vertical
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: DisplaySibling(
                                              imagehgt: 70,
                                              imagewdt: 70,
                                              imagebradius: 40,
                                              cthgt: 66,
                                              ctwdt: 110,
                                              imageUrl: siblingimages[index],
                                              persongname: siblingnames[index],
                                              personrelation: "Sibling",
                                            ),
                                          ),
                                        ]),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                         // ),

                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.04,
                            left: (MediaQuery.of(context).size.width * 0.25) - 55,
                            child: DisplaySibling(
                              imagehgt: 70,
                              imagewdt: 70,
                              imagebradius: 40,
                              cthgt: 66,
                              ctwdt: 110,
                            ),
                          ), // father
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.04,
                            left: (MediaQuery.of(context).size.width * 0.75) - 55,
                            child: DisplaySibling(
                              imagehgt: 70,
                              imagewdt: 70,
                              imagebradius: 40,
                              cthgt: 66,
                              ctwdt: 110,
                            ),
                          ), // mother
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.47,
                            left: (MediaQuery.of(context).size.width * 0.25) - 55,
                            child: DisplaySibling(
                              imagehgt: 70,
                              imagewdt: 70,
                              imagebradius: 40,
                              cthgt: 66,
                              ctwdt: 110,
                            ),
                          ), // me
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.47,
                            left: (MediaQuery.of(context).size.width * 0.75) - 55,
                            child: DisplaySibling(
                              imagehgt: 70,
                              imagewdt: 70,
                              imagebradius: 40,
                              cthgt: 66,
                              ctwdt: 110,
                            ),
                          ), //spouse
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.63,
                            left: (MediaQuery.of(context).size.width * 0.5) - 55,
                            child: DisplaySibling(
                              imagehgt: 70,
                              imagewdt: 70,
                              imagebradius: 40,
                              cthgt: 66,
                              ctwdt: 110,
                            ),
                          ), // child
                        ],
                      )),
                  // Container(
                ],
              ),


            ],
          ),

        ),


//bottom

      ),

    );
  }

}






