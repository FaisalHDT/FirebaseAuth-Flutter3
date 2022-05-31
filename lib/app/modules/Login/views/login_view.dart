import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "REGISTER AKUN",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              "Please REGISTER to Continue.",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "User ID",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              controller: controller.ReguserID,
              decoration: InputDecoration(
                hintText: "User ID",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontStyle: FontStyle.italic),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "Password",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Obx(
              () => TextFormField(
                cursorColor: Colors.black,
                controller: controller.Regpassword,
                obscureText: controller.isHiddenpassword.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () => controller.isHiddenpassword.toggle(),
                      icon: controller.isHiddenpassword.isTrue
                          ? Icon(
                              Icons.visibility_off,
                              color: Color(0xFF686868),
                            )
                          : Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xFF686868),
                            )),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontStyle: FontStyle.italic),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              width: Get.width,
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  controller.register();
                },
                child: Container(
                  height: Get.height * 0.06,
                  width: Get.width * 0.3,
                  child: Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF474db5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Text(
              "LOGIN",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              "Please LOGIN to Continue.",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "User ID",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              controller: controller.userID,
              decoration: InputDecoration(
                hintText: "User ID",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontStyle: FontStyle.italic),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "Password",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Obx(
              () => TextFormField(
                cursorColor: Colors.black,
                controller: controller.password,
                obscureText: controller.isHiddenpassword.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () => controller.isHiddenpassword.toggle(),
                      icon: controller.isHiddenpassword.isTrue
                          ? Icon(
                              Icons.visibility_off,
                              color: Color(0xFF686868),
                            )
                          : Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xFF686868),
                            )),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontStyle: FontStyle.italic),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              width: Get.width,
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: Container(
                  height: Get.height * 0.06,
                  width: Get.width * 0.3,
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF474db5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              width: Get.width,
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  controller.signInWithGoogle();
                },
                child: Container(
                  height: Get.height * 0.06,
                  width: Get.width,
                  child: Center(
                    child: Text(
                      'Login With Google',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF474db5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
