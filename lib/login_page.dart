import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>['email'],
);

Future<void> _handleSignIn() async {
// Trigger the authentication flow
  final GoogleSignInAccount googleUser = await _googleSignIn.signIn();

  if (googleUser != null) {
    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    print(googleUser);
    print(googleAuth.serverAuthCode);

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
