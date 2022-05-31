import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_firebase/app/routes/app_pages.dart';

class LoginController extends GetxController {
  RxBool isHiddenpassword = true.obs;

  late TextEditingController userID = TextEditingController();
  late TextEditingController password = TextEditingController();

  late TextEditingController ReguserID = TextEditingController();
  late TextEditingController Regpassword = TextEditingController();
  Future<void> register() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: ReguserID.text,
        password: Regpassword.text,
      );
      Get.snackbar("Akun berhasil ditambahkan", "${(ReguserID.text)}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar("Eror", "Password Terlalu Sedikit");
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar(
            "Eror", "Email Sudah di gunakan silahkan gunakan email yang lain");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userID.text,
        password: password.text,
      );
      print('berhasil Login dengan akun');

      print(credential.user!.email);
      Get.snackbar(
          "berhasil login dengan akun", credential.user!.email.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Email tidak ditemukan", "${(userID.text)}");
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Password dengan  ${(userID.text)} tidak ditemukan",
            "Silahkan chek kembali password");
      }
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    var akun = await FirebaseAuth.instance.signInWithCredential(credential);

    print(akun.user!.displayName);
    Get.snackbar(
        "berhasil login dengan akun", akun.user!.displayName.toString());

    return akun;

    // Once signed in, return the UserCredential
  }
}
