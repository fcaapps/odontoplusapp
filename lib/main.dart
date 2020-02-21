import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:odontoplusapp/pages/AgendarPage.dart';
import 'package:odontoplusapp/pages/CadastroUsuarioPage.dart';
import 'package:odontoplusapp/pages/ConfigPage.dart';
import 'package:odontoplusapp/pages/ContatoPage.dart';
import 'package:odontoplusapp/pages/ConvenioDetailPage.dart';
import 'package:odontoplusapp/pages/ConveniosPage.dart';
import 'package:odontoplusapp/pages/HistoricoDetailPage.dart';
import 'package:odontoplusapp/pages/HistoricoPage.dart';
import 'package:odontoplusapp/pages/HomePage.dart';
import 'package:odontoplusapp/pages/LoginPage.dart';
import 'package:odontoplusapp/pages/PerfilPage.dart';
import 'package:odontoplusapp/pages/ServicoDetailPage.dart';
import 'package:odontoplusapp/pages/ServicosPage.dart';
import 'package:odontoplusapp/pages/TermosCondicoesPage.dart';
import 'package:odontoplusapp/pages/widgets/DadosPage.dart';
import 'package:odontoplusapp/utils/theme.dart';

String menuSelecionado = "Home";
String imageHome = "assets/icons/home2.png";
String imageAgendar = "assets/icons/calendar2.png";
String imagePerfil = "assets/icons/perfil2.png";

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/home': (context) => HomePage(),
      '/cadastro_usuario': (context) => CadastroUsuarioPage(),
      '/termos' : (context) => TermosCondicoesPage(),
      '/contato': (context) => ContatoPage(),
      '/perfil': (context) => PerfilPage(),
      '/servicos': (context) => ServicosPage(),
      '/servico_detail': (context) => ServicoDetailPage(),
      '/agendar': (context) => AgendarPage(),
      '/historico': (context) => HistoricoPage(),
      '/historico_detail': (context) => HistoricoDetailPage(),
      '/dados': (context) => DadosPage(),
      '/convenios': (context) => ConveniosPage(),
      '/convenio_detail': (context) => ConvenioDetailPage(),
      '/configs': (context) => ConfigPage(),
    },
    theme: basicTheme(),
    title: 'Odonto Plus',
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
