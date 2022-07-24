import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: size.width,
                child: TextFormField(
                 decoration: const InputDecoration(
                   labelText: 'email'
                 ),
                ),
              ),
              Container(
                height: 50,
                width: size.width,
                child: TextFormField(
                  decoration:  const InputDecoration(
                      labelText: 'password'
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text('Sign In'),),
              ElevatedButton(onPressed: (){}, child: Text('Sign Up'),),
            ],
          ),
      ),
    );
  }
}