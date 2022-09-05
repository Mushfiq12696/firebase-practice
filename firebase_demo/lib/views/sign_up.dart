import 'package:firebase_demo/helper/firebase_helper.dart';
import 'package:firebase_demo/views/home_screen.dart';
import 'package:firebase_demo/views/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sing Up'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Enter Your Email'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passController,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Enter Your Password'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  var e = _emailController.text;
                  var p = _passController.text;

                  FireBaseHelper().SignUp(e, p, context);
                },
                child: Text('Sign Up')),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: Text('Already Registered? Login')),
          ],
        ),
      ),
    );
  }
}
