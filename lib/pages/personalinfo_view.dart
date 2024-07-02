import 'package:famlaika1/pages/famtree_view.dart';
import 'package:famlaika1/pages/personalinfo2_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../constants/colors.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  bool male = true;
  late Color mcolor;
  Color fcolor = Colors.grey;

  TextEditingController dateinput = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String name = "";

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
              backgroundColor: AppColors.primaryColor,
              leading: IconButton(onPressed:() {
              Navigator.pop(context);
        },    icon: Icon(Icons.arrow_back_ios,color: Color(0xFFFFFFFF),)),
              title: Text("Personal Information",style: TextStyle(color:Color(0xFFFFFFFF),fontSize: 22,
              fontFamily: 'Figtree',fontWeight: FontWeight.w500,

        ),),

      ),
      
      body: Container(
        height: 750.r,
        width: double.maxFinite,
        child: Column(
            children: [

            Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                    "Entering your personal details and setting up your profile",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:  TextStyle(fontFamily: 'Figtree',fontWeight: FontWeight.w400,
                      fontSize: 18,color: Color(0xFFFFFFFF),height: 1.38
                    ),
                        ),
              ),
            ),
            Padding(
                  padding: const EdgeInsets.all(12),
                  child: Stack(
                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(

                    radius: 73.r,
                    backgroundColor: Color(0xFF2B2B2B),
                    child: Column(

                  children: [

                      IconButton(

                      onPressed: () {},
                      icon: Icon(Icons.person),
                      alignment: Alignment.center,
                      iconSize: 75.r,
                      color: Colors.black,

                        ),

                        TextButton(
                          onPressed: () {},
                          child: Text("Upload Photo",
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 12,height: 0
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  Positioned(
                      top: 116.r,
                      right: -30.r,
                    child: Container(
                      height: 30.r,
                      width: 100.r,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
                      child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
               width: 340.r,
              color: Color(0xFF2B2B2B),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(

                      padding: const EdgeInsets.only(
                      left: 10
                      ),
                      child: Align(
                      alignment:  Alignment.topLeft,
                        child:    Text("Gender", style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.w400,
                                  fontFamily: 'Figtree',color: Color(0xFFFFFFFF))
                        ),
                      ),
                    ),

                    Container(

                      margin: EdgeInsets.all(10),
                      child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                // ignore: avoid_unnecessary_containers
                                child: InkWell(
                                    onTap: () {
                                    male = true;
                                    setState(() {});
                                  },
                                  child: Container(

                                        margin: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black54),
                                    child: Column(
                                      children: [
                                          Icon(
                                          Icons.person,
                                          size: 60,
                                          color:
                                          male ? Colors.amber : Colors.grey,
                                        ),
                                        Text(
                                          'Male',
                                          // ignore: deprecated_member_use
                                                textScaleFactor: 1.2,
                                                style: TextStyle(fontFamily: 'Figtree',fontSize: 14,
                                                color: male
                                                ? Colors.white
                                                : Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(

                                child: Expanded(
                                  child: InkWell(
                                      onTap: () {
                                      male = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black54,
                                      ),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.person_2,
                                            size: 60,
                                            color: male
                                                ? Colors.grey
                                                : Colors.amber,
                                          ),
                                          Text('Female',
                                            // ignore: deprecated_member_use
                                                  textScaleFactor: 1.2,
                                                  style: TextStyle(fontSize: 14,fontFamily: 'Figtree',
                                                  color: male
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Full Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Figtree',
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height:40.r,
                            width: 300.r,

                            child: TextField(style: TextStyle(color: Color(0xFFFFFFFF),
                                fontFamily: 'Figtree',fontSize: 16,fontWeight: FontWeight.w400),
                              decoration:

                              InputDecoration(

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                                fillColor: Colors.black.withOpacity(0.1),
                                filled: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Date of Birth",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'figtree',
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 40.r,
                            width: 300.r,
                            child: TextField(style: TextStyle(color:
                            Color(0xFFFFFFFF),fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Figtree'),
                              controller: dateController,
                              decoration: InputDecoration(

                                suffixIcon: Icon(Icons.calendar_month,color: Color(0xFFFFFFFF),),
                                border:
                                OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                                fillColor: Colors.black.withOpacity(0.1),
                                filled: true,
                              ),
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2124));
                                if (pickedDate != null) {
                                  print(pickedDate);
                                  String formattedDate =
                                  DateFormat('dd-MM-yyyy').format(pickedDate);
                                  print(formattedDate);
                                  setState(() {
                                    dateController.text = formattedDate;
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.r,),
            Container(
                  height: 50.r,
                  width: 340.r,
                  decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: MaterialButton(
                        color: Color(0xFFF7B52C),
                        onPressed: () {
                        Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Famtree()));
                },
                child: Text('Continue',
                        style: TextStyle(fontFamily: 'Figtree',
                        fontWeight: FontWeight.w600,fontSize: 20,
                        color: Color(0xFF1E1E1E)),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
