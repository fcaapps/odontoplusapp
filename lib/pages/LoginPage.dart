import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonFacebookOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonGoogleOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonPrimary.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerLogin.dart';
import 'package:odontoplusapp/pages/widgets/precisaajudaApp.dart';
import 'package:odontoplusapp/pages/widgets/semcadastroLogin.dart';
import 'package:odontoplusapp/pages/widgets/termoscondicoesLogin.dart';
import 'package:odontoplusapp/pages/widgets/userpassLogin.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).primaryColor,
      statusBarIconBrightness: Brightness.light
    ));

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
                  child: userpassLogin(),
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
                      validarCampos: () {
                        setState(() {
                          isLoading = !isLoading;
                        });

                        Navigator.pushReplacementNamed(context, '/home');

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
