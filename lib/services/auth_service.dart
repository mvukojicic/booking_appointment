import 'package:book_repair/screens/home_screen/home_screen.dart';
import 'package:book_repair/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  StreamBuilder<User?> handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }

  Future<UserCredential> singInWithGoogle() async {
    final googleUser = await GoogleSignIn(
      scopes: <String>['email'],
    ).signIn();

    final googleAuth = await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }
}
