import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';


Future<void> signInWithEmailAndPasseord(email,password)async
{
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  }on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    log('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    log('Wrong password provided for that user.');
  }
}
}