import 'package:flutter/material.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerMenuOdontoPlus.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuDrawer.dart';
import 'package:odontoplusapp/pages/widgets/rodapes/rodapeSitioOne.dart';
import 'package:scoped_model/scoped_model.dart';

class drawerOne extends StatefulWidget {
  final Function(int) onPressed;

  const drawerOne({Key key, this.onPressed})
      : super(key: key);

  @override
  _drawerOneState createState() => _drawerOneState();
}

class _drawerOneState extends State<drawerOne> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                headerMenuOdontoPlus(),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: 30,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Text(">> Usuário: ${!model.isLoggedIn() ? "Desconhecido" : model.userData["nome"]}",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                    color: Colors.white
                  ),),
                ),
                menuDrawer(),
                SizedBox(height: 40),
                rodapeSitioOne()
              ],
            ),
          ),
        );
      },
    );
  }
}
