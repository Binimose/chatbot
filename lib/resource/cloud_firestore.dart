import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:walliamarkets/resource/authentication_method.dart';

class CloudFireStoreMethods {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  AuthenticationMethods auth = AuthenticationMethods();

  Future<void> addNameAndAddress({
    required String name,
    required String address,
  }) async {
    try {
      if (auth.currentUser != null) {
        await firebaseFirestore.collection("User").doc(auth.currentUser!.uid).set({
          "name": name,
          "address": address,
        });
        debugPrint("Name and address added successfully");
      } else {
        debugPrint("Error: No authenticated user found.");
      }
    } catch (e) {
      debugPrint("Error adding name and address: $e");
    }
  }
}
