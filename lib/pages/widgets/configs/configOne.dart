import 'package:flutter/material.dart';

class configOne extends StatefulWidget {
  @override
  _configOneState createState() => _configOneState();
}

class _configOneState extends State<configOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              alignment: Alignment.center,
              child: Text(
                'Configuração',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0XFF707070)),
              ),
            ), //
            Divider(thickness: 2,indent: 15, endIndent: 15),
            //Editar Perfil
            ListTile(
              leading: Icon(
                Icons.edit,
                size: 22,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Editar Perfil',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Mudar Senha
            ListTile(
              leading: Icon(
                Icons.lock_outline,
                size: 22,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Mudar Senha',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Wi-fi
            ListTile(
              leading: Icon(
                Icons.wifi,
                size: 22,
                color: Theme.of(context).primaryColor,
              ),
              trailing: Switch(
                activeColor: Color(0XFF25CFC3),
                inactiveTrackColor: Color(0XFF25CFC3),
                onChanged: (val) {},
                value: false,
              ),
              title: Text(
                'Wi-fi',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Uso de Dados
            ListTile(
              leading: Icon(
                Icons.data_usage,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              trailing: Switch(
                activeColor: Color(0XFF25CFC3),
                inactiveTrackColor: Color(0XFF25CFC3),
                onChanged: (val) {},
                value: true,
              ),
              title: Text(
                'Uso de dados',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Notificações
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              trailing: Switch(
                activeColor: Color(0XFF25CFC3),
                inactiveTrackColor: Color(0XFF25CFC3),
                onChanged: (val) {},
                value: false,
              ),
              title: Text(
                'Notificações',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Autorizações
            ListTile(
              leading: Icon(Icons.format_line_spacing,
                  size: 30, color: Theme.of(context).primaryColor),

              title: Text(
                'Autorizações',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
