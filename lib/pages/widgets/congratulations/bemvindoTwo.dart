import 'package:flutter/material.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class bemvindoTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0XFF7707070),
              radius: 10,
              backgroundImage: NetworkImage(model.firebaseUser == null ? "assets/images/image-default.jpg" : model.userData["urlFoto"]),
            ),
            SizedBox(width: 10,),
            Text(
              'Olá, ${!model.isLoggedIn() ? "Desconhecido" : model.userData["nome"] == null ? "" : model.userData["nome"]}',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}
