import 'dart:math';

import 'package:famlaika1/constants/ImageConstant.dart';
import 'package:famlaika1/constants/appDecoration.dart';
import 'package:famlaika1/pages/addmember_view.dart';
import 'package:famlaika1/widgets/custom_icon_button.dart';
import 'package:famlaika1/widgets/custom_image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/DisplaySibling.dart';
import '../constants/colors.dart';
import '../widgets/custom_OutlinedButton.dart';

class Famtree extends StatefulWidget {
  const Famtree({super.key});

  @override
  State<Famtree> createState() => _FamtreeState();
}

class _FamtreeState extends State<Famtree> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: AppColors.primaryColor,

        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leading: IconButton(onPressed:() {
            Navigator.pop(context);
          },    icon: Icon(Icons.arrow_back_ios,color: Color(0xFFFFFFFF),)),
          title: Text("Create Family tree",style: TextStyle(color:Color(0xFFFFFFFF),fontSize: 22.sp,
                  fontFamily: 'Figtree',fontWeight: FontWeight.w500,

          ),),
          actions: [TextButton( onPressed: () {  }, child: Text("skip",style:
                    TextStyle(fontFamily: 'Figtree',fontSize: 14.sp,
                    fontWeight: FontWeight.w400,color:Color(0xFFFFFFFF) )),



          )

          ],

        ),
        body:
        Container(
          height: 756.r,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.r,
            vertical: 16.r,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 278.r,
                margin: EdgeInsets.only(right: 51.r),
                child: Text("Keep your family connected by adding them to your profile.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.57
                ),
                ),
              ),
              SizedBox(height: 33.r,),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 502.r,
                  width: 345.r,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [

                      //_buildMotherButton(context),


                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.04,
                        left: (MediaQuery.of(context).size.width * 0.45) - 15,
                        child: Image(image: AssetImage(
                            'assets/images/img_heart.png'),
                          height: 24, width: 24,
                          alignment: Alignment.topCenter,

                        ),),

                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.08,
                          left: (MediaQuery.of(context).size.width * 0.45) - 1,
                          child: CContainer(
                            cwidth: 1,
                            cheight: MediaQuery.of(context).size.height * 0.095,
                          )
                      ),


                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.175,
                          left: (MediaQuery.of(context).size.width * 0.13),
                          child: CContainer(
                              cheight: 1,
                              //cwidth:
                              // selected == false ?  (MediaQuery.of(context).size.width * 0.553) :
                              // isScrolledToEnd==false?
                              // (MediaQuery.of(context).size.width * 0.8):(MediaQuery.of(context).size.width * 0.51)

                            cwidth:selected == false
                            ? (MediaQuery.of(context).size.width * 0.65) : (MediaQuery.of(context).size.width * 0.509)

                          )),
                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.175,
                          left: (MediaQuery.of(context).size.width * 0.78) - 1,
                          child: CContainer(
                            cwidth: 1,
                            cheight: MediaQuery.of(context).size.height * 0.1,
                          )

                      ),

                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.175,
                          left: (MediaQuery.of(context).size.width * 0.13),
                          child: CContainer(
                            cheight: (MediaQuery.of(context).size.width * 0.386),
                            cwidth: 1,
                          )),///near sibling
                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.4,
                          left: (MediaQuery.of(context).size.width * 0.45) - 1,
                          child: CContainer(
                            cwidth: 1,
                            cheight: MediaQuery.of(context).size.height * 0.12,
                          )

                      ),/// child vertical
                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.4,
                          left: (MediaQuery.of(context).size.width * 0.23),
                          child: CContainer(
                            cheight: 1,
                            cwidth: (MediaQuery.of(context).size.width * 0.5),
                          )),
                      ///me to spouse


                      //_buildSiblingButton(context),



                      //_buildChildButton(context),



                     // me yellow border
                     //  Align(
                     //    alignment: Alignment.bottomLeft,
                     //    child: Container(
                     //      height: 68,
                     //      width: 68,
                     //      margin: EdgeInsets.only(
                     //        left: 16,
                     //        bottom: 136
                     //      ),
                     //      decoration:AppDecoration.outlineYellow.copyWith(
                     //        borderRadius: BorderRadiusStyle.customBorderTL34,
                     //      ) ,
                     //
                     //    ),
                     //  ),


                      //_buildSpouseButton(context),



                      _buildMotherButton(context),

                      _buildChildButton(context),
                      _buildMeButton(context),
                      _buildSpouseButton(context),
                      _buildSiblingsButton(context),

                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 98,
                          width: 105,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [

                              _buidFatherButton(context)
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),

      ),


    );
  }

  Widget _buildMotherButton(BuildContext context){
    return Stack(
      children: [

        CustomOutlinedButton(
        width: 110,
        text: "Mother",
        margin: EdgeInsets.only(top: 58,),

        leftIcon: Container(
          margin: EdgeInsets.only(right: 0),
          child: Image(image: AssetImage("assets/images/img_plus.png"),
          height: 16,
          width: 16,
          ),

        ),
        alignment: Alignment.topRight,
        onPressed: () {
          // Navigate to another page here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addmember(defaultMale: false, isGenderFixed: true)), // Replace AnotherPage with the page you want to navigate to
          );
        },

      ),

        Padding(padding: EdgeInsets.only(right: 16,),
          child:CustomIconButton(
            height: 68,
            width: 68,
            padding: EdgeInsets.all(15),
            alignment: Alignment.topRight,
            child:CustomImageView(
              imagePath: ImageConstant.imgframe,

            ) ,
          ) ,
        ),
        Positioned(
          top: 20, // Adjust the top position of the circle avatar to match the height of the rectangle
          right: 35,
          child: CircleAvatar(
            radius: 15,
            backgroundColor:Color(0xFF949292) ,
            backgroundImage: AssetImage("assets/images/img_1.png"),
          ),
        ),

      ]
    );
  }

  Widget _buildSiblingsButton(BuildContext context){
    return Stack(
      children: [CustomOutlinedButton(
        width: 115,
        text: "Siblings",
        margin: EdgeInsets.only(bottom: 12),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 0),
          child: Image(image: AssetImage("assets/images/img_plus.png"),
            height: 16,
            width: 16,
          ),
        ),
        alignment: Alignment.centerRight,
        onPressed: () {
          // Navigate to another page here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addmember(defaultMale: Random().nextBool(), isGenderFixed: false)), // Replace AnotherPage with the page you want to navigate to
          );
        },
      ),

        Padding(padding: EdgeInsets.only(
          top: 152,
          right: 16,
        ),
          child: CustomIconButton(

            height: 68,
            width: 70,
            padding: EdgeInsets.all(15),
            alignment: Alignment.topRight,
            child: CustomImageView(
              imagePath:ImageConstant.imgframe,
            ),
          ),
        ),
        Positioned(
          top: 170, // Adjust the top position of the circle avatar to match the height of the rectangle
          right: 35,
          child: CircleAvatar(
            radius: 15,
            backgroundColor:Color(0xFF949292) ,
            backgroundImage: AssetImage("assets/images/img_1.png"),
          ),
        ),

      ]
    );

  }

Widget _buildChildButton(BuildContext context){
    return Stack(
      children: [CustomOutlinedButton(
          width: 110,
          text: "Child",

        leftIcon: Container(
          margin: EdgeInsets.only(right: 0),
          child: Image(image: AssetImage("assets/images/img_plus.png"),
            height: 16,
            width: 16,
          ),
        ),
        alignment: Alignment.bottomCenter,
        onPressed: () {
          // Navigate to another page here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addmember(defaultMale: Random().nextBool(), isGenderFixed: false)), // Replace AnotherPage with the page you want to navigate to
          );
        },
      ),

        Padding(padding:EdgeInsets.only(bottom: 30,),

          child: CustomIconButton(
            height: 68,
            width: 68,
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomCenter,
            child: CustomImageView(imagePath: ImageConstant.imgframe,

            ),
          ),
        ),
        Positioned(
          top: 395, // Adjust the top position of the circle avatar to match the height of the rectangle
         left: 150,
          child: CircleAvatar(
            radius: 15,
            backgroundColor:Color(0xFF949292) ,
            backgroundImage: AssetImage("assets/images/img_1.png"),
          ),
        ),
      ]
    );
}

Widget _buildMeButton(BuildContext context){
    return Stack(
      children: [CustomOutlinedButton(
          width: 105,

          buttonTextStyle: theme.textTheme.bodyLarge!,
          text: "Me",
          margin: EdgeInsets.only(bottom: 106),
          alignment: Alignment.bottomLeft,

          // Navigate to another page here

      ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 68,
            width: 68,

            margin: EdgeInsets.only(
                left: 16,
                bottom: 136
            ),
            decoration:AppDecoration.outlineYellow.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL34,
            ) ,

          ),
        ),]
    );
}

Widget _buildSpouseButton(BuildContext context){
    return Stack(
      children: [CustomOutlinedButton(
          width: 115,
          text: "Spouse",
          margin: EdgeInsets.only(bottom: 106),
          leftIcon: Container(
          margin: EdgeInsets.only(right: 0),
            child: Image(image: AssetImage("assets/images/img_plus.png"),
              height: 16,
              width: 16,
            ),
        ),
        alignment: Alignment.bottomRight,
        onPressed: () {
          // Navigate to another page here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addmember(defaultMale: Random().nextBool(), isGenderFixed: false)), // Replace AnotherPage with the page you want to navigate to
          );
        },

      ),

        Padding(padding: EdgeInsets.only(
          right: 16,
          bottom: 136,
        ),
          child: CustomIconButton(
            height: 68,
            width: 68,
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              imagePath: ImageConstant.imgframe,
            ),
          ),

        ),
        Positioned(
          top: 290, // Adjust the top position of the circle avatar to match the height of the rectangle
          right: 35,
          child: CircleAvatar(
            radius: 15,
            backgroundColor:Color(0xFF949292) ,
            backgroundImage: AssetImage("assets/images/img_1.png"),
          ),
        ),
      ]
    );
}

Widget _buidFatherButton(BuildContext context){
    return Stack(
      children:[ CustomOutlinedButton(

        width: 110,
          text: "Father",
        margin: EdgeInsets.only(top: 58),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 0),
          child:  Image(image: AssetImage("assets/images/img_plus.png"),
        height: 16,
        width: 16,
      ),
        ),
        alignment: Alignment.bottomCenter,
        onPressed: () {
          // Navigate to another page here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addmember(defaultMale: true, isGenderFixed: true)), // Replace AnotherPage with the page you want to navigate to
          );
        },
      ),

        CustomIconButton(
          height: 68,
          width: 68,
          padding: EdgeInsets.all(15),
          alignment: Alignment.topCenter,
          child: CustomImageView(imagePath: ImageConstant.imgframe,
          ),
        ),
        Positioned(
          top: 20, // Adjust the top position of the circle avatar to match the height of the rectangle
          right: 35,
          child: CircleAvatar(
            radius: 15,
            backgroundColor:Color(0xFF949292) ,
            backgroundImage: AssetImage("assets/images/img_1.png"),
          ),
        ),
      ]
    );
}
}
