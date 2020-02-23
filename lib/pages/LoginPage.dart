import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonFacebookOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonGoogleOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonPrimary.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerLogin.dart';
import 'package:odontoplusapp/pages/widgets/precisaajudaApp.dart';
import 'package:odontoplusapp/pages/widgets/semcadastroLogin.dart';
import 'package:odontoplusapp/pages/widgets/termoscondicoesLogin.dart';
import '../main.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/widgets/textfields/userpassLogin.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'pacientes/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usuarioController = TextEditingController();
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  int posPixelInicialPage = 0;

  Color _corAppBarAposMovimento() {
    return posPixelInicialPage < 60
        ? Theme.of(context).backgroundColor
        : Theme.of(context).primaryColor;
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        statusBarIconBrightness: Brightness.light));

    return SafeArea(
        bottom: true,
        top: true,
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                //HeaderLogin
                headerLogin(),
                //Usuário e Senha
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Container(
                    margin: EdgeInsets.all(40),
                    height: 200,
                    child: Material(
                      child: Column(
                        children: <Widget>[
                          //Usuário
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: TextField(
                              controller: usuarioController,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 20),
                                hintText: 'usuário',
                                hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //Senha
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 20),
                                hintText: 'senha',
                                hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          //Esqueci minha senha
                          Container(
                            alignment: Alignment.center,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Esqueci minha senha',
                                style: Theme.of(context).textTheme.display3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                //Button Entrar
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: buttonPrimary(
                      textButton: 'ENTRAR',
                      isLoading: isLoading,
                      widthButao: MediaQuery.of(context).size.width - 60,
                      heightButao: 42,
                      validarCampos: () {
                        setState(() {
                          isLoading = !isLoading;
                        });
                        setState(() {
                          imageHome = "assets/icons/home.png";
                          imageAgendar = "assets/icons/calendar2.png";
                          imagePerfil = "assets/icons/perfil2.png";
                        });
                        if (usuarioController.text == 'Fernando') {
                          Navigator.pushReplacementNamed(context, '/home');
                        } else if (usuarioController.text == 'Diego') {
                          Navigator.pushReplacementNamed(context, '/home_dentista');
                        }
                      },
                    ),
                  ),
                ),
                //Opção para cadastrar usuário
                Padding(
                  padding: const EdgeInsets.only(top: 410),
                  child: semcadastroLogin(),
                ),
                //Separador
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 440),
                    height: 5,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Color(0XFFD4D4D4),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
                //Button de Acesso - Facebook
                Padding(
                  padding: const EdgeInsets.only(top: 460),
                  child: buttonFacebookOne(
                    textButton: 'Entrar com Facebook',
                  ),
                ),
                //Button de Acesso - Google
                Padding(
                  padding: const EdgeInsets.only(top: 510),
                  child: buttonGoogleOne(
                    textButton: 'Entrar com Google',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 570, left: 20, right: 20),
                  child: termoscondicoesLogin(),
                )
              ],
            ),
          ),
        ));
  }
}
