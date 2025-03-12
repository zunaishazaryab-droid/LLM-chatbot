import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class SiginIn extends StatelessWidget {
  const SiginIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),  
      body: SignInScreen(
        providers: [
          EmailAuthProvider(),
        ],
      ),
    );
  }
}