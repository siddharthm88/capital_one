import 'package:capital_one/Authenticate/LoginScree.dart';
import 'package:capital_one/Screens/homePage.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return HomePage();
    } else {
      return LoginScreen();
    }
  }
}
