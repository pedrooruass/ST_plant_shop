import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  static final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  static Future<bool> signInWithEmailAndPassword(
      {required BuildContext context,
      required String email,
      required String password}) async {
    //     showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) => const Center(child: CircularProgressIndicator(color: AppColors.primaryColor)),
    // );

    try {
      final authResult = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return authResult.user != null;
    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    }
    // finally {
    //   Navigator.of(context).pop();
    // }
  }

  static Future<bool> signUpWithEmailAndPassword(
      {required GlobalKey<FormState> formKey,
      required BuildContext context,
      required String email,
      required String password}) async {
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) => const Center(child: CircularProgressIndicator(color: AppColors.primaryColor)),
    // );

    final isValid = formKey.currentState!.validate();
    if (!isValid) return false;
    try {
      final authResult = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return authResult.user != null;
    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    }
    // finally {
    //   Navigator.of(context).pop(); // is not working
    // }
  }

  static Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    final currentUser = firebaseAuth.currentUser;
    return currentUser != null;
  }
}
