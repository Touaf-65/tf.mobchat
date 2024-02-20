import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // login
  Future<UserCredential> loginWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // sign up
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // log out
  Future<void> logOut() async {
    return await _auth.signOut();
  }
}