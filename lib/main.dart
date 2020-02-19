import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:odontoplusapp/pages/ContatoPage.dart';
import 'package:odontoplusapp/pages/HomePage.dart';
import 'package:odontoplusapp/pages/LoginPage.dart';
import 'package:odontoplusapp/pages/PerfilPage.dart';
import 'package:odontoplusapp/pages/ServicosPage.dart';
import 'package:odontoplusapp/utils/theme.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/home': (context) => HomePage(),
      '/contato': (context) => ContatoPage(),
      '/perfil': (context) => PerfilPage(),
      '/servicos': (context) => ServicosPage(),
//      '/perfilpage': (context) => PerfilPage(),
//      '/servicos': (context) => Servicos(),
//      '/agendar': (context) => AgendarPage(),
//      '/historico': (context) => Historico(),
//      '/dados': (context) => Dados(),
//      '/convenio': (context) => Convenios(),
//      '/config': (context) => ConfigPage(),
    },
    theme: basicTheme(),
    title: 'Odonto Plus',
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
