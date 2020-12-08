import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> userSetup(String startTime, String endTime, String comName,
    String eventName,bool sent) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Events');
  FirebaseAuth auth = FirebaseAuth.instance;
  users.doc(eventName).set({
    'startTime': startTime,
    'endTime': endTime,
    'comName': comName,
    'eventName':eventName,
    'sentToCoordinator': sent
  });
  return;
}

