import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/ui/screens/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Method to add background image
    BoxDecoration _buildBackground() {
      return BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/uslpash.jpg"),
        fit: BoxFit.cover,
      ));
    }

    //Method to add Text
    Text _buildText() {
      //1st Style to type text
      return Text(
        'Recipes',
        style: TextStyle(
          color: Colors.white,
          fontSize: 45.12,
        ),
        textAlign: TextAlign.center,
      );

      //2nd style to type text...We can use any of the two
      // return Text(
      //   'Recipes',
      //   style: Theme.of(context).textTheme.headline3,
      //   textAlign: TextAlign.center,
      //
      // );
    }

    return Scaffold(
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              // Space between "Recipes" and the button:
              SizedBox(height: 50.0),
              GoogleSignInButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
