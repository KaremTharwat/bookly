import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthWithEmailPassword{
  authintication(emailAddress,password,context)async
  {
    try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailAddress,
    password: password
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No user found for that email.")));
  } else if (e.code == 'wrong-password') {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong password provided for that user.")));
  }
}
  }
  
}