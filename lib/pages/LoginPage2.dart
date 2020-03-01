import 'package:flutter/material.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class LoginPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  await model.signInWithGoogle().whenComplete((){
                    Navigator.pushNamed(context, '/home');
                  });
                },
                child: Text('Google'),
              ),
              RaisedButton(
                onPressed: () {
                  model.logoutGoogle();
                },
                child: Text('Logout'),
              )
            ],
          ),
        );
      },
    );
  }
}
