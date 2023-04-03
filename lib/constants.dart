import 'package:flutter/material.dart';
import 'package:get/get.dart';


const kPrimaryColor = Color(0xFF00eaeb);
const kBGColor =  Color(0xFFe7e8fa);
const kPrimaryLightColor = Color(0xFF7df6fe);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFFfbfaff);
const kTextColor = Color(0xFF999a9e);
const kTextLiteColor = Color(0xFF000000);
const kAnimationDuration = Duration(milliseconds: 400);

Widget kGradientLine ({required List<Color> colors,})=>Container(
  height: 2.5,
  width: Get.width*0.2,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      gradient: LinearGradient(colors: colors,
      )
  ),
);


final kEmailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final kAdmit1 = RegExp('fahim165685@gmail.com');
final kAdmit2 = RegExp('minhazttb@gmail.com');
final kAdmit3 = RegExp('muntahirhossain@gmail.com');

const String kEmailNullError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your Password";
const String kShortPassError = "password is too short";
const String kMatchPassError = "Password don't match";

final otpInputBorder = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(
    vertical: 15,
  ),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: kPrimaryColor)),
  focusedBorder: outlineInputBorder(),
);
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: kTextColor));
}

/*
customSnackBar({required BuildContext context,
  required ContentType
  contentType,required
  String title,required
  String massage,}){

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      clipBehavior: Clip.none,
      content: AwesomeSnackbarContent(
        title: title,
        message: massage,
        contentType: contentType,
        inMaterialBanner: false,
      )));

}*/
