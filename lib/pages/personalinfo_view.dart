import 'package:famlaika1/pages/famtree_view.dart';

import 'package:famlaika1/widgets/GradientButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../constants/appbarConst.dart';

import 'dart:io';
class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  File? _image;
  Future<void> _pickImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  Future<void> _pickImageFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  bool female = true;
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
      backgroundColor: Colors.grey.shade900,
      appBar:CustomAppBar(title: 'Personal Information', showActions: false,),
      // AppBar(
      //   backgroundColor: Colors.grey.shade900,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(Icons.arrow_back_ios, color: Color(0xFFFFFFFF)),
      //   ),
      //   title: Text(
      //     "Personal Information",
      //     style: TextStyle(
      //       color: Color(0xFFFFFFFF),
      //       fontSize: 22.sp,
      //       fontFamily: 'Figtree',
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * double.maxFinite,
        child: Column(
          children: [
            SizedBox(height:25.h ,),
            Container(
              //color: Colors.pinkAccent,
              height: 65.h,
              width: 330.w,
              child: Align(
                alignment: Alignment.topLeft,

                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Entering your personal details and setting up\n',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14,height: 1.33.h),
                    ),
                    TextSpan(
                      text: 'your profile',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14,height: 1.33.r),
                    ),
                  ]
                )),
                // Text(
                //   "Entering your personal details and\nsetting up your profile",
                //   maxLines: 2,
                //   overflow: TextOverflow.ellipsis,
                //   style: TextStyle(
                //     fontFamily: 'Figtree',
                //     fontWeight: FontWeight.w400,
                //     fontSize: 14.sp,
                //     color: Color(0xFFFFFFFF),
                //     height: 1.38.h,
                //   ),
                // ),
              ),
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 65.r, // CircleAvatar radius
                  backgroundColor: Color(0xFF2B2B2B),
                  backgroundImage: _image !=null ? FileImage(_image!): null,

                  child:_image==null
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img_13.png",width: 42.w,),
                      // Icon(
                      //   Icons.person,
                      //   size: 55.sp, // Icon size
                      //   color: Color(0xFF737272),
                      // ),
                      TextButton(
                        onPressed: _pickImageFromGallery,
                        child: Text(
                          "Upload Photo",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 12.sp, // Text size
                          ),
                        ),
                      ),
                    ],
                  )
                  : null,
                ),
                Positioned(
                  top: 90.h, // Position below the CircleAvatar
                  right: 12.w, // Align to the right of CircleAvatar
                  child: Container(

                    height: 30.h, // Container height
                    width: 30.w, // Container width
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),

                    child: IconButton(

                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 20.sp, // Icon size
                      ),
                      onPressed: _pickImageFromCamera,
                    ),
                  ),
                ),
              ],
            ),


            // Stack(
            //   children: [
            //     CircleAvatar(
            //       radius: 73.r,
            //       backgroundColor: Color(0xFF2B2B2B),
            //       child: SizedBox(
            //         height: 150.h,
            //         child: Column(
            //           children: [
            //             IconButton(
            //               onPressed: () {},
            //               icon: Icon(Icons.person),
            //               iconSize: 75.sp,
            //               color: Color(0xFF737272),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(0),
            //               child: TextButton(
            //                 onPressed: () {},
            //                 child: Text(
            //                   "Upload Photo",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.w600,
            //                     color: Colors.white,
            //                     fontSize: 12.sp,
            //                     height: 0,
            //                   ),
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Positioned(
            //       top: 116.h,
            //       right: -30.w,
            //       child: Container(
            //         height: 30.h,
            //         width: 100.w,
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           color: Colors.amber,
            //         ),
            //         child: Icon(
            //           Icons.camera_alt,
            //           color: Colors.white,
            //           size: 20.sp,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: Container(
                height: 292.h,
                width: 340.w,
                color: Color(0xFF2B2B2B),
                child: Padding(
                  padding: const EdgeInsets.all(8.0).r,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10).r,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "  Gender",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Figtree',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10).r,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      female = true;
                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(10.r),
                                      margin: EdgeInsets.all(10.r),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: female ? Colors.amber :Colors.grey.shade800),
                                        borderRadius: BorderRadius.circular(5.r),

                                        color:female ? Colors.amber.withOpacity(0.1) : Colors.black.withOpacity(0.1),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 2.w,),
                                          CircleAvatar(
                                            backgroundColor:Colors.black.withOpacity(0.1) ,
                                            child:
                                            Icon(
                                              Icons.person_2_rounded,
                                              size: 20.sp,
                                              color: female ? Colors.amber : Colors.grey,
                                            ),
                                          ),
                                          SizedBox(width: 2.w,),
                                          Text(
                                            'Female',
                                            textScaleFactor: 1.2.sp,
                                            style: TextStyle(
                                              fontFamily: 'Figtree',
                                              fontSize: 12.sp,
                                              color: female ? Colors.white : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      female = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(10.r),
                                      margin: EdgeInsets.all(10.r),
                                      decoration: BoxDecoration(
                                        border: Border.all(color:female ? Colors.grey.shade800 : Colors.amber),
                                        borderRadius: BorderRadius.circular(5.r),
                                        color:female ? Colors.black.withOpacity(0.1) : Colors.amber.withOpacity(0.1),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10.w,),
                                          Icon(
                                            CupertinoIcons.person_alt_circle,
                                            size: 40.sp,
                                            color: female ? Colors.grey : Colors.amber,
                                          ),
                                          SizedBox(width: 12.w,),
                                          Text(
                                            'Male',
                                            textScaleFactor: 1.2.sp,
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily: 'Figtree',
                                              color: female ? Colors.grey : Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0).r,
                                child: Text(
                                  "Full Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Figtree',
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                              width: 300.w,
                              child: TextField(
                                
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Figtree',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  label: Text("Enter full name",style: TextStyle(color: Color(0xFF4E4C4C),fontSize: 12.sp),),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10).r,
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: Colors.black.withOpacity(0.1),
                                  filled: true,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0).r,
                                child: Row(
                                  children: [

                                    Text(
                                      "Date of Birth",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'figtree',
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Text("(optional)", style: TextStyle(fontSize: 12,color: Color(0xFF4E4C4C)),)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                              width: 300.w,
                              child: TextField(
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  fontFamily: 'Figtree',
                                ),
                                controller: dateController,
                                decoration: InputDecoration(
                                  label: Text("DD/MM/YYYY",style: TextStyle(fontSize: 12,color: Color(0xFF4E4C4C)),),
                                  suffixIcon: Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10).r,
                                    borderSide: BorderSide.none,

                                  ),
                                  fillColor: Colors.black.withOpacity(0.1),
                                  filled: true,
                                ),
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2124),

                                  );
                                  if (pickedDate != null) {
                                    String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                                    setState(() {
                                      dateController.text = formattedDate;
                                    });
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
            ),
           SizedBox(height: 10.h),
            Container(
              height: 40.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20).r,
              ),
              child: GradientButton(
               // color: Color(0xFFF7B52C),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Famtree()));
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
