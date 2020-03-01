import 'package:flutter/material.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class bemvindoOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0XFF7707070),
              radius: 25,
              backgroundImage: NetworkImage(model.userData["urlFoto"]),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bem vindo, ${!model.isLoggedIn() ? "Desconhecido" : model.userData["nome"] == null ? "" : model.userData["nome"]}',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ),
                Text(
                  'Nosso app foi preparado pensando',
                  style: TextStyle(
                      fontFamily: 'Roboto', fontSize: 12, color: Colors.white),
                ),
                Text(
                  'em você',
                  style: TextStyle(
                      fontFamily: 'Roboto', fontSize: 12, color: Colors.white),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
