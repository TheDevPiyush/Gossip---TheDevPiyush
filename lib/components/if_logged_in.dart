import 'package:chatting_app/components/on_users_list.dart';
import 'package:chatting_app/pages/chat_screen.dart';
import 'package:chatting_app/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class IfLoggedIn extends StatelessWidget {
  IfLoggedIn({super.key});
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    if (auth.currentUser != null) {
      return OnlineUsersScreen();
    } else {
      return const Login();
    }
  }
}