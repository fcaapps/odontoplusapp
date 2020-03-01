import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../../main.dart';

class menuDrawer2 extends StatefulWidget {
  const menuDrawer2({Key key}) : super(key: key);

  @override
  _menuDrawer2State createState() => _menuDrawer2State();
}

class _menuDrawer2State extends State<menuDrawer2> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ListTile(
                    onTap: () {
//                  Navigator.popAndPushNamed(context, '/home');
//                  setState(() {
//                    menuSelecionado = "Home";
//                  });
                    },
                    title: Text(
                      'Meus pacientes',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: menuSelecionado == "Home"
                            ? Color(0XFF707070)
                            : Colors.black45,
                      ),
                    )),
                Divider(thickness: 1, color: Color(0XFF707070), indent: 15, endIndent: 15,),
                ListTile(
                    onTap: () {
//                  Navigator.popAndPushNamed(context, '/home');
//                  setState(() {
//                    menuSelecionado = "Home";
//                  });
                    },
                    title: Text(
                      'Agenda',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: menuSelecionado == "Home"
                            ? Color(0XFF707070)
                            : Colors.black45,
                      ),
                    )),
                Divider(thickness: 1, color: Color(0XFF707070), indent: 15, endIndent: 15,),
                ListTile(
                    onTap: () {
//                  Navigator.popAndPushNamed(context, '/home');
//                  setState(() {
//                    menuSelecionado = "Home";
//                  });
                    },
                    title: Text(
                      'Marcações',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: menuSelecionado == "Home"
                            ? Color(0XFF707070)
                            : Colors.black45,
                      ),
                    )),
                Divider(thickness: 1, color: Color(0XFF707070), indent: 15, endIndent: 15,),
                ListTile(
                    onTap: () {
//                  Navigator.popAndPushNamed(context, '/home');
//                  setState(() {
//                    menuSelecionado = "Home";
//                  });
                    },
                    title: Text(
                      'Configurações',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: menuSelecionado == "Home"
                            ? Color(0XFF707070)
                            : Colors.black45,
                      ),
                    )),
                Divider(thickness: 1, color: Color(0XFF707070), indent: 15, endIndent: 15,),
                ListTile(
                    onTap: () {
//                  Navigator.popAndPushNamed(context, '/home');
//                  setState(() {
//                    menuSelecionado = "Home";
//                  });
                    },
                    title: Text(
                      'Meu perfil',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: menuSelecionado == "Home"
                            ? Color(0XFF707070)
                            : Colors.black45,
                      ),
                    )),
                Divider(thickness: 1, color: Color(0XFF707070), indent: 15, endIndent: 15,),
                ListTile(
                    onTap: () {
                      model.signOut();
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    title: Text(
                      'Sair',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: menuSelecionado == "Home"
                            ? Color(0XFF707070)
                            : Colors.black45,
                      ),
                    )),
                Divider(thickness: 1, color: Color(0XFF707070), indent: 15, endIndent: 15,),
              ],
            ),
          ),
        );
      },
    );
  }
}
