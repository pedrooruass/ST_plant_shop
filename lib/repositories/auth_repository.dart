import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<bool> signInWithEmailAndPassword(
      String email, String password) async {
    final authResult = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return authResult.user != null;
  }


  Future<bool> signUpWithEmailAndPassword(
      String email, String password) async {
    final authResult = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return authResult.user != null;
  }


  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    final currentUser = firebaseAuth.currentUser;
    return currentUser != null;
  }

}