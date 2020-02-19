import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:odontoplusapp/pages/AgendarPage.dart';
import 'package:odontoplusapp/pages/ConfigPage.dart';
import 'package:odontoplusapp/pages/ContatoPage.dart';
import 'package:odontoplusapp/pages/ConveniosPage.dart';
import 'package:odontoplusapp/pages/HistoricoPage.dart';
import 'package:odontoplusapp/pages/HomePage.dart';
import 'package:odontoplusapp/pages/LoginPage.dart';
import 'package:odontoplusapp/pages/PerfilPage.dart';
import 'package:odontoplusapp/pages/ServicosPage.dart';
import 'package:odontoplusapp/pages/widgets/DadosPage.dart';
import 'package:odontoplusapp/utils/theme.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/home': (context) => HomePage(),
      '/contato': (context) => ContatoPage(),
      '/perfil': (context) => PerfilPage(),
      '/servicos': (context) => ServicosPage(),
      '/agendar': (context) => AgendarPage(),
      '/historico': (context) => HistoricoPage(),
      '/dados': (context) => DadosPage(),
      '/convenios': (context) => ConveniosPage(),
      '/configs': (context) => ConfigPage(),
    },
    theme: basicTheme(),
    title: 'Odonto Plus',
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
