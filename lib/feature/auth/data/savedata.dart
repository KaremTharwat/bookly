import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> saveData(email,phone)async
{
  try{
   await FirebaseFirestore.instance.collection("users").add({
      "email" : email,
      "phone" : phone
    });
  }catch(e){
    log(e.toString());
  }
}