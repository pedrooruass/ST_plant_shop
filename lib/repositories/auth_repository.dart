import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  static final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  static Future<bool> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final authResult = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return authResult.user != null;
    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    }
  }

  static Future<bool> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    final authResult = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return authResult.user != null;
  }

  static Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    final currentUser = firebaseAuth.currentUser;
    return currentUser != null;
  }
}
