import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerMenuOdontoPlus.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuDrawer.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuDrawer2.dart';
import 'package:odontoplusapp/pages/widgets/rodapes/rodapeSitioOne.dart';
import 'package:scoped_model/scoped_model.dart';

class drawerTwo extends StatefulWidget {
  final Function(int) onPressed;

  const drawerTwo({Key key, this.onPressed})
      : super(key: key);

  @override
  _drawerTwoState createState() => _drawerTwoState();
}

class _drawerTwoState extends State<drawerTwo> {
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
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(">> Usuário: ${!model.isLoggedIn() ? "" : model.userData["nome"]}",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: Colors.white
                    ),),
                ),
                menuDrawer2(),
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
