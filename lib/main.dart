import 'package:flutter/material.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/AgendarPage.dart';
import 'package:odontoplusapp/pages/CadastroUsuarioPage.dart';
import 'package:odontoplusapp/pages/ConfigPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/ContatoPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/ConvenioDetailPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/ConveniosPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/HistoricoDetailPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/HistoricoPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/HomePage.dart';
import 'package:odontoplusapp/pages/LoginPage.dart';
import 'package:odontoplusapp/pages/LoginPage2.dart';
import 'package:odontoplusapp/pages/ResetPasswordPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/PerfilPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/ServicoDetailPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/ServicosPage.dart';
import 'package:odontoplusapp/pages/TermosCondicoesPage.dart';
import 'package:odontoplusapp/pages/dentistas/HomeDentistaPage.dart';
import 'package:odontoplusapp/pages/widgets/DadosPage.dart';
import 'package:odontoplusapp/utils/theme.dart';
import 'package:scoped_model/scoped_model.dart';

import 'models/user_model.dart';

String menuSelecionado = "Home";
String imageHome = "assets/icons/home.png";
String imageAgendar = "assets/icons/calendar2.png";
String imagePerfil = "assets/icons/perfil2.png";
String usuarioInformado;
bool isDentistaG = false;
bool isGoogleCredential = false;

void main() {

  runApp(ScopedModel<UserModel>(
    model: UserModel(),
    child: MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/home_dentista': (context) => HomeDentistaPage(),
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
        '/reset_pass': (context) => ResetPasswordPage(),
      },
      theme: basicTheme(),
      title: 'Odonto Plus',
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    ),
  ));
}
