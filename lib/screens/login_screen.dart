import 'package:book_repair/services/auth_service.dart';
import 'package:book_repair/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  Future<void> initialization() async {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onButtonPressed: () => AuthService().singInWithGoogle(),
              buttonColor: Colors.lightBlue,
              buttonTitle: 'Sign in with Google',
              buttonIcon: FontAwesomeIcons.google,
              shadowColor: Colors.blueAccent,
              titleColor: Colors.white,
              iconColor: Colors.white,
              titleFontWeight: FontWeight.w600,
              titleFontSize: 15,
            ),
          ],
        ),
      ),
    );
  }
}
