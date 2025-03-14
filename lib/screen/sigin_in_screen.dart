import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:llm_chatbot/routing/app_routes.dart';

class SiginIn extends StatelessWidget {
  const SiginIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: SignInScreen(
        providers: [EmailAuthProvider()],
        actions: [
          AuthStateChangeAction<UserCreated>((context, state) {
            // Put any new user logic here
            context.goNamed(AppRouter.profile.name);
          }),
        ],
      ),
    );
  }
}
