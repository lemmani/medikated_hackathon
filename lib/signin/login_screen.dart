import 'package:flutter/material.dart';
import 'components/logo_header.dart';
import 'components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoHeader(),
              SizedBox(height: 48),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}