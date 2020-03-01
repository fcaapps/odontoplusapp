import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../../main.dart';

class menuDrawer extends StatefulWidget {
  const menuDrawer({Key key}) : super(key: key);

  @override
  _menuDrawerState createState() => _menuDrawerState();
}

class _menuDrawerState extends State<menuDrawer> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Container(
          padding: const EdgeInsets.all(30.0),
          child: InkWell(
            child: Column(
              children: <Widget>[
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/home');
                      setState(() {
                        menuSelecionado = "Home";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/home_drawer.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Home'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'PÁGINA INICIAL',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Home"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/contato');
                      setState(() {
                        menuSelecionado = "Contato";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/contatos_drawer.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Contato'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'CONTATOS',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Contato"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/perfil');
                      setState(() {
                        menuSelecionado = "Perfil";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/perfil_drawer.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Perfil'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'PERFIL',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Perfil"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/servicos');
                      setState(() {
                        menuSelecionado = "Servicos";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/servicos.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Perfil'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'SERVIÇOS',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Servicos"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/agendar');
                      setState(() {
                        menuSelecionado = "Agendar";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/calendar_drawer.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Agendar'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'AGENDAR',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Agendar"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/historico');
                      setState(() {
                        menuSelecionado = "Historico";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/historico.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Historico'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'HISTÓRICO',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Historico"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/dados');
                      setState(() {
                        menuSelecionado = "Dados";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/dados.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Dados'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'DADOS',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Dados"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/convenios');
                      setState(() {
                        menuSelecionado = "Convenios";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/convenios.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Convenios'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'CONVÊNIOS',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Convenios"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/configs');
                      setState(() {
                        menuSelecionado = "Configs";
                      });
                    },
                    leading: Image.asset(
                      "assets/icons/config_drawer.png",
                      height: 20,
                      width: 20,
                      color: menuSelecionado == 'Configs'
                          ? Color(0XFF343638)
                          : Color(0XFFD4D4D4),
                    ),
                    title: Text(
                      'CONFIGURAÇÕES',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Configs"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
                ListTile(
                    onTap: () {
                      model.signOut();
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    leading: Icon(Icons.input),
                    title: Text(
                      'LOGOUT',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: menuSelecionado == "Configs"
                            ? Color(0XFF191919)
                            : Colors.black45,
                      ),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
