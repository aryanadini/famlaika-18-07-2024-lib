import 'package:famlaika1/widgets/GradientButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constants/colors.dart';

import 'otp_view.dart'; // Assuming this is a file where you've defined your size utils

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
        backgroundColor: Colors.grey.shade900,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 750.h, // Using .h for responsive height
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                width: 420.23.w, // Using .w for responsive width
                height: 740.h,
                top: -40.h,
                left: -110.w,
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 369.h),
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(195.r), // Using .r for responsive radius
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(29, 29, 29, 0),
                        Color(0xFF313131),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Positioned(
                width: 220.99.w,
                height: 260.h,
                top: 37.h,
                left: 15.w,
                child: Image.asset(
                  "assets/images/img_grp128f.png",
                  height: 230.h,
                  width: 200.w,
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                width: 172.w,
                height: 70.h,
                top: 360.h,
                left: 16.w,
                child: Text(
                  'Hello, Let\'s get started!',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Figtree',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.36,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Positioned(
                width: 420.w,
                height: 60.h,
                top: 445.h,
                left: 16.w,
                child: Text(
                  'Bring your family closer together\nwith Famlaika.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    height: 1.36,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Positioned(
                width: 50.w,
                height: 50.h,
                top: 70.h,
                left: 280.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff5DB9A7),
                      )
                    ],
                  ),
                  child:
                  Image.asset(
                    "assets/images/img_intersect_1.png",
                    height: 40.h,
                    width: 31.w,
                  ),
                ),
              ),
              Positioned(
                width: 50.w,
                height: 50.h,
                top: 158.h,
                left: 280.w,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                     BoxShadow(color: Color(0xffA69AF5)),
                    ],
                  ),
                  child: Image.asset("assets/images/img_8.png",




                  ),
                ),
              ),
              Positioned(
                width: 50.w,
                height: 50.h,
                top: 230.h,
                left: 247.w,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(color: Color(0xffE67657)),
                    ],
                  ),
                  child: Image.asset("assets/images/img_intersect_3.png"),
                ),
              ),
              Positioned(
                width: 50.w,
                height: 50.h,
                top: 290.h,
                left: 180.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFF0994B)),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/img_intersect_4.png",
                    height: 45.h,
                    width: 45.w,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/img_Ellipse69.png",
                          height: 121.h,
                          width: 29.w,
                        ),
                        margin: EdgeInsets.only(
                          top: 220.h,
                          bottom: 54.h,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 10.w,
                            bottom: 54.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 266.h,
                                width: 286.w,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 241.w,
                                          top: 53.h,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 38.h),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        height: 239.h,
                                        width: 214.w,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                margin: EdgeInsets.only(right: 30.w),
                                                padding: EdgeInsets.all(20.w),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(92.r),
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 3.h),
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
                              SizedBox(height: 7.h),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(10.w),
                child: Container(
                  height: 165.h,
                  width: 325.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12.h,),
                      Container(
                        height: 45.h,
                        child: Text(
                          "Enter Mobile Number",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Figtree',
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      Container(
                        height: 57.h,

                        child: Form(
                          key: _formKey,
                          child: IntlPhoneField(
                            controller: _phoneNumberController,
                            focusNode: focusNode,
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),

                            ),
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
                       SizedBox(height: 10.h),
                      Container(
                        height: 40.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(

                        ),
                        child: GradientButton(
                          child: Text(
                            'Request OTP',
                            style: TextStyle(
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                         // color: Color(0xFFF7B52C),
                          onPressed: () {
                            if (_phoneNumberController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Please enter your phone number.'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                              return;
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Otp(phoneNumber: 'phoneNumber'),
                              ),
                            );
                            _formKey.currentState?.validate();
                          },
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
}
