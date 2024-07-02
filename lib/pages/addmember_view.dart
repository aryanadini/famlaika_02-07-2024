import 'package:famlaika1/constants/bottom.dart';
import 'package:famlaika1/pages/home2.dart';
import 'package:famlaika1/pages/personalinfo2_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../constants/colors.dart';


class Addmember extends StatefulWidget {
  final bool defaultMale;
  final bool isGenderFixed;
  const Addmember({super.key,required this.defaultMale,this.isGenderFixed=false});

  @override
  State<Addmember> createState() => _AddmemberState();
}

class _AddmemberState extends State<Addmember> {

  bool male = true;
  late Color mcolor;
  Color fcolor = Colors.grey;

  TextEditingController dateinput = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String name = "";
  final TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController FullNameController = TextEditingController();
  TextEditingController RelationController = TextEditingController();

  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    male = widget.defaultMale;
    mcolor = male ? Colors.amber : Colors.grey;
    fcolor = male ? Colors.grey : Colors.amber;
    dateinput.text = ""; // set the initial value of text field
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
        title: Text("Add Member",style: TextStyle(color:Color(0xFFFFFFFF),fontSize: 22,
          fontFamily: 'Figtree',fontWeight: FontWeight.w500,

        ),),

      ),

      body: SingleChildScrollView(

        child: Form(
          key: formKey,

          child: SizedBox(
            height: 800,
            child: Container(


              width: double.maxFinite,
              child: Column(
                children: [

                  Container(
                    height: 40,
                    width: 285.r,
                    margin: EdgeInsets.only(right: 51.r),
                    child: Text("Let's start by adding a new family member to your family tree.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.33
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Stack(
                      children: [

                        CircleAvatar(
                          radius: 50.r,
                          backgroundColor: Color(0xFF2B2B2B),
                          child: Column(

                            children: [

                              IconButton(

                                onPressed: () {},
                                icon: Icon(Icons.person,color:Color(0xFF737272) ,),
                                alignment: Alignment.center,
                                iconSize: 75.r,
                                color: Colors.black,

                              ),


                            ],
                          ),
                        ),
                        Positioned(
                          top: 70.r,
                          right: -35.r,
                          child: Container(
                            height: 30.r,
                            width: 100.r,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 322.r,
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
                                          if (!widget.isGenderFixed) {
                                            male = true;
                                            setState(() {});
                                          }
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
                                            if (!widget.isGenderFixed) {
                                              male = false;
                                              setState(() {});
                                            }
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
                                  height: 45.r,

                                  child: TextField(
                                    controller: FullNameController,
                                    style: TextStyle(color: Color(0xFFFFFFFF),
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
                                      "Relation",
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
                                  height: 45.r,
                                  child: TextField(
                                    controller: RelationController,
                                    style: TextStyle(color: Color(0xFFFFFFFF),
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
                                      "Phone Number",
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
                                  height: 65.r,
                                  width: 290.r,
                                  child: Container(





                                    child: IntlPhoneField(
                                      controller: _phoneNumberController,
                                      focusNode: focusNode,
                                      style: TextStyle(color:Color(0xFFFFFFFF), ),
                                      decoration: InputDecoration(


                                        border: OutlineInputBorder(

                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none),

                                        fillColor: Colors.black.withOpacity(0.1),
                                        filled: true,
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
                                  height: 45.r,
                                  width: 290.r,
                                  child: TextField(style: TextStyle(color:
                                  Color(0xFFFFFFFF),fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Figtree'),
                                    controller: dateController,
                                    decoration: InputDecoration(

                                      suffixIcon: Icon(Icons.calendar_month),
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
                    width: 322.r,
                    decoration: BoxDecoration(
                        color: Colors.black, borderRadius: BorderRadius.circular(20)),
                    child: MaterialButton(
                      color: Color(0xFFF7B52C),
                      onPressed: () {
                        if (FullNameController.text.isEmpty) {
                          // Show a dialog or snackbar indicating that the phone number field is required
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please enter your Name.'),
                              backgroundColor: Colors.red, // You can customize the color
                            ),
                          );
                          return; // Exit the function if the phone number field is empty
                        }
                        if (RelationController.text.isEmpty) {
                          // Show a dialog or snackbar indicating that the phone number field is required
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please enter your Relation.'),
                              backgroundColor: Colors.red, // You can customize the color
                            ),
                          );
                          return; // Exit the function if the phone number field is empty
                        }



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




                        if (dateController.text.isEmpty) {
                          // Show a dialog or snackbar indicating that the phone number field is required
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please enter your Date of Birth.'),
                              backgroundColor: Colors.red, // You can customize the color
                            ),
                          );
                          return; // Exit the function if the phone number field is empty
                        }











                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Bottom()));
                      },
                      child: Text('Add Member',
                        style: TextStyle(fontFamily: 'Figtree',
                            fontWeight: FontWeight.w600,fontSize: 20,
                            color: Color(0xFF1E1E1E)),
                      ),
                    ),
                  ),


                ],
              ),


            ),
          ),
        ),
      ),
    );
  }
}