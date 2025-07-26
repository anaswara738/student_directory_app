import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<void> screen({
  required String name,
  required String email,
  required String phonenumber,
  required BuildContext context,
}) async {
  try {
    await FirebaseFirestore.instance.collection("Students").add({
      "Name": name,
      "Email": email,
      "Phone number": phonenumber,
    });
    Navigator.pop(context);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Student data created")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Stream<QuerySnapshot> fetchdata() {
  return FirebaseFirestore.instance.collection("Students").snapshots();
}

Future<void> deletestudent(String id, BuildContext context) async {
  try {
    await FirebaseFirestore.instance.collection("Students").doc(id).delete();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Student details deleted successfully")),
    );
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> update(
  String id,
  String name,
  String email,
  String phonenumber,
  BuildContext context,
) async {
  try {
    await FirebaseFirestore.instance.collection("Students").doc(id).update({
      "Name": name,
      "Email": email,
      "Phone number": phonenumber,
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("updated successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
