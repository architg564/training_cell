import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo Home Page')),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'username', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'password', border: OutlineInputBorder()),
            ),
            OutlinedButton(
              onPressed: () async {
                final userCredential =
                    await FirebaseAuth.instance.signInAnonymously();
                print('${userCredential.user.uid}');
                Navigator.pushNamed(context, '/');
              },
              child: Text('LOGIN'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Not a  user? Register'),
            ),
          ],
        ),
      ),
    );
  }
}
