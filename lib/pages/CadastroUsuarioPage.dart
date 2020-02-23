import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonFacebookOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonGoogleOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonPrimary.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerLogin.dart';
import 'package:odontoplusapp/pages/widgets/semcadastroLogin.dart';
import 'package:odontoplusapp/pages/widgets/termoscondicoesLogin.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/widgets/textfields/userpassLogin.dart';
import 'package:odontoplusapp/pages/widgets/textfields/cadastroUsuario.dart';

class CadastroUsuarioPage extends StatefulWidget {
  @override
  _CadastroUsuarioPageState createState() => _CadastroUsuarioPageState();
}

class _CadastroUsuarioPageState extends State<CadastroUsuarioPage> {
  bool isLoading = false;
  bool checkBoxValue = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        statusBarIconBrightness: Brightness.light));
    return SafeArea(
        bottom: true,
        top: true,
        child: Container(
          //height: MediaQuery.of(context).size.height,
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                //HeaderLogin
                headerLogin(),
                //Usuário e Senha
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: cadastroUsuario(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 485, left: 50),
                  child: Material(
                    type: MaterialType.transparency,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkBoxValue,
                          activeColor: Color(0XFF707070),
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value;
                            });
                          },
                        ),
                        Text(
                          'Sou Dentista',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: Color(0XFF373737)),
                        )
                      ],
                    ),
                  ),
                ),
                //Button Entrar
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 530),
                    child: buttonPrimary(
                      textButton: 'ENTRAR',
                      isLoading: isLoading,
                      widthButao: MediaQuery.of(context).size.width - 60,
                      heightButao: 48,
                      validarCampos: () {
                        setState(() {
                          isLoading = !isLoading;
                        });
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 590, left: 20, right: 20),
                  child: termoscondicoesLogin(),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Material(
                    type: MaterialType.transparency,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
