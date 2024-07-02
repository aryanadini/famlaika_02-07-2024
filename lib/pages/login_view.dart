
import 'package:famlaika1/constants/sizeutils.dart';
import 'package:famlaika1/pages/otp_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Login extends StatefulWidget {

   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _phoneNumberController = TextEditingController();

  FocusNode focusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 756.r,
          width: double.maxFinite,

          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
          width: 420.23.r,
          height: 740.r,
          top: -40.r,
          left: -110.r,

          child:Container(

                    width: double.maxFinite,
                    margin:EdgeInsets.only(bottom: 369.r),
                    padding: EdgeInsets.symmetric(vertical: 6.r),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(195.r),gradient: LinearGradient(colors: [Color.fromARGB(29, 29, 29, 0),Color(0xFF313131)])

                    ),
                  )
              ),
              Positioned(
                  width: 220.99.r,
              height: 255.r,
              top: 37.r,
              left: 15.r,


                  child:Image.asset("assets/images/img_grp128f.png",height: 229,width: 200,alignment: Alignment.center,) ),
              Positioned(
                  width: 172.r,
              height: 60.r,
              top: 360.r,
              left: 16.r,

                  child:Text('Hello, Let\'s get started!',maxLines: 2,
                    overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: 'Figtree',fontSize: 22.sp,fontWeight: FontWeight.w600,height:1.36,
                        color: Color(0xFFFFFFFF)),
                  ), ),
              Positioned(
                  width: 263.r,
              height: 39.r,
              top: 438.r,
              left: 16.r,
                  child:Text('Bring your family closer together\nwith Famlaika.',maxLines: 2,
                    overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: 'Figtree',
                        fontWeight: FontWeight.w400,fontSize: 16.sp,height:1.33.r,color: Color(0xFFFFFFFF)   ),), ),
              Positioned(
                  width: 50.r,
              height: 50.r,
              top: 70.r,
              left: 280.r,
                  child:  Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.r),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),boxShadow: [BoxShadow(
                        color:Color(0xff5DB9A7) ,
                      )]

                      ),
                      child: Image.asset("assets/images/img_intersect_1.png",height: 40.r,width: 31.r,)),),
              Positioned(
                  width: 50.r,
              height: 50.r,
              top: 158.r,
              left: 280.r,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),boxShadow: [BoxShadow(
                      color: Color(0xffA69AF5)
                  )]
                  ),
                  child: Image.asset("assets/images/img_intersect_2.png")),),
              Positioned(
                  width: 50.r,
              height: 50.r,
              top: 230.r,
              left: 247.r,

                  child:Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.r),boxShadow: [BoxShadow(
                          color: Color(0xffE67657)
                      )]),
                      child: Image.asset("assets/images/img_intersect_3.png",)), ),
              Positioned(
                  width: 50.r,
              height:50.r,
              top: 290.r,
              left: 180.r,


              child:  Container(

                padding: EdgeInsets.symmetric(horizontal: 4.r),

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.r),boxShadow: [BoxShadow(color: Color(0xFFF0994B))]),
                child: Image.asset("assets/images/img_intersect_4.png",
                  height: 35.r,
                  width: 35.r,
                 ),
              ),),
              Align(
                alignment: Alignment.topCenter,
                child: Container(


                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset("assets/images/img_Ellipse69.png",height: 121,width: 29,
                        ),
                        margin: EdgeInsets.only(
                          top: 220.r,
                          bottom: 54.r,
                        ),
                      ),
                      Expanded(
                          child:Padding(padding: EdgeInsets.only(
                            left: 10.r,
                            bottom: 54.r,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 266.r,
                                width: 286.r,
                                child: Stack(

                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(padding: EdgeInsets.only(
                                        left: 241.r,
                                        top: 53.r,
                                      ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            SizedBox(height: 38.r,),

                                          ],
                                        ),

                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,

                                    ),
                                    SizedBox(
                                      height: 7.r,
                                    ),

                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        height: 239.r,
                                        width: 214.r,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  right: 30.r,
                                                ),
                                                padding: EdgeInsets.all(20.r),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(92.r),
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [

                                                    SizedBox(height: 3.r,),

                                                  ],
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 7.r,
                              ),

                            ],
                          ),

                          ))

                    ],
                  ),
                ),
              ),


             Container(
               height: 235.r,
               width: 345.r,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Container(
                     height:40.r,

                     child: Text("Enter Mobile Number",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,fontFamily: 'Figtree',color: Color(0xFFFFFFFF)),

                     ),
                   ),




                   Container(

                     child: Form(

                       key: _formKey,

                        child: IntlPhoneField(
                          controller: _phoneNumberController,
                         focusNode: focusNode,
                          style: TextStyle(color:Color(0xFFFFFFFF), ),

                         decoration: InputDecoration(

                           fillColor: Color(0xFF2F2F2F),
                           filled: true,

                           border: OutlineInputBorder(
                             borderSide: BorderSide(),
                           ),
                         ),
                         languageCode: "en",
                          initialCountryCode: "IN",
                         onChanged: (phone) {
                           print(phone.completeNumber);
                         },
                         onCountryChanged: (country) {
                           print('Country changed to: ' + country.name);
                         },

                       ),

                     ),
                   ),

                   Align(
                     alignment: Alignment.center,
                     child: Container(
                       height:50.r ,
                       width: 345.r,
                       decoration:BoxDecoration(
                           gradient: LinearGradient(colors: [Color.fromARGB(243, 128, 43, 1),Color(0xFFFAE42C)])
                       ),
                       child: MaterialButton(



                         child: Text('Request OTP',style: TextStyle(fontFamily: 'Figtree',fontWeight: FontWeight.w600,fontSize: 16.sp,color: Color(0xFF1E1E1E)),),
                         color: Color(0xFFF7B52C),


                         onPressed: () {




                           if (_phoneNumberController.text.isEmpty) {
                             // Show a dialog or snackbar indicating that the phone number field is required
                             ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(
                                 content: Text('Please enter your phone number.'),
                                 backgroundColor: Colors.red, // You can customize the color
                               ),
                             );
                             return; // Exit the function if the phone number field is empty
                           }





                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp(phoneNumber: 'phoneNumber',)));


                           _formKey.currentState?.validate();
                         },
                       ),
                     ),
                   ),

                 ],
               ),
             )
            ],
          ),
        ),



      )
    );
  }
}
