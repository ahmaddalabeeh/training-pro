import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_in.dart';

import 'Question1.dart';

class AuthProvider with ChangeNotifier {
  late TextEditingController emailController, passwordController;
  User? get currentUser => FirebaseAuth.instance.currentUser;
  bool get isLoggedIn => currentUser != null;

  Future<void> loginInWithEmailAndPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text);

      if (isLoggedIn) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const QuestioneOne(),
            ));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<void> createWithEmailAndPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text);

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const QuestioneOne(),
          ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()));
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
