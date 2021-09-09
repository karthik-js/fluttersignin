import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>['email'],
);

Future<void> _handleSignIn() async {
  try {
    GoogleSignInAccount? account = await _googleSignIn.signIn();
    if (account != null) {
      print(account);
    }
  } catch (error) {
    print(error);
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage')),
      body: Center(
          child: FloatingActionButton.extended(
        onPressed: _handleSignIn,
        label: Text('Sign in with button'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )),
    );
  }
}
