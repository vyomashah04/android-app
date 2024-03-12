import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lost_found_app/mainpage.dart';
import 'package:lost_found_app/signup.dart';

class LoginPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> _handleSignIn(String sapId, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: '$sapId@example.com', // Assuming SAP ID is used as part of the email
        password: password,
      );
      User? user = result.user;
      return user;
    } catch (error) {
      print("Error during login: $error");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'SAP ID'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                // Example: Authenticate with email/password
                User? user = await _handleSignIn("userSapId", "userPassword");

                if (user != null) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
                } else {
                  // Handle authentication failure
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
              ),
              child: const Text('Login'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                const SizedBox(width: 8.0),
                GestureDetector(
                  child: const Text(
                    'Sign up Now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage())
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
