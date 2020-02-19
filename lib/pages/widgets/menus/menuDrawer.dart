import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class menuDrawer extends StatefulWidget {
  final Function(int) onPressed;

  const menuDrawer({Key key, this.onPressed}) : super(key: key);

  @override
  _menuDrawerState createState() => _menuDrawerState();
}

class _menuDrawerState extends State<menuDrawer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        child: Column(
          children: <Widget>[
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/home');
                },
                leading: Image.asset(
                  "assets/icons/home_drawer.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'PÁGINA INICIAL',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/contato');
                },
                leading: Image.asset(
                  "assets/icons/contatos_drawer.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'CONTATOS',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/perfil');
                },
                leading: Image.asset(
                  "assets/icons/perfil_drawer.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'PERFIL',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/servicos');
                },
                leading: Image.asset(
                  "assets/icons/servicos.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4)
                ),
                title: Text(
                  'SERVIÇOS',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/agendar');
                },
                leading: Image.asset(
                  "assets/icons/calendar_drawer.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'AGENDAR',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/historico');
                },
                leading: Image.asset(
                  "assets/icons/historico.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'HISTÓRICO',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/dados');
                },
                leading: Image.asset(
                  "assets/icons/dados.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'DADOS',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/convenios');
                },
                leading: Image.asset(
                  "assets/icons/convenios.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'CONVÊNIOS',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context,'/configs');
                },
                leading: Image.asset(
                  "assets/icons/config_drawer.png",
                  height: 20,
                  width: 20,
                  color: Color(0XFFD4D4D4),
                ),
                title: Text(
                  'CONFIGURAÇÕES',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
