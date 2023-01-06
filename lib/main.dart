import 'package:flutter/material.dart';

void main() {
  runApp(const LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  const LoginUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUiAppView(),
    );
  }
}

class LoginUiAppView extends StatelessWidget {
  const LoginUiAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('LoginUiApp'),
      ),
    );
  }
}
