import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonFacebookOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonGoogleOne.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonPrimary.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerLogin.dart';
import 'package:odontoplusapp/pages/widgets/semcadastroLogin.dart';
import 'package:odontoplusapp/pages/widgets/termoscondicoesLogin.dart';
import 'package:scoped_model/scoped_model.dart';
import '../main.dart';
import 'package:odontoplusapp/firebase/firebase_service.dart';
import 'package:odontoplusapp/pages/api_response.dart';

import 'pacientes/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int posPixelInicialPage = 0;

  Color _corAppBarAposMovimento() {
    return posPixelInicialPage < 60
        ? Theme.of(context).backgroundColor
        : Theme.of(context).primaryColor;
  }

  bool isLoading = false;
  bool isUsuarioOK;
  bool isSenhaOK;
  bool isDentista;



  Future _verificarUsuarioLogado() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseUser usuarioLogado = await auth.currentUser();

    DocumentSnapshot docUser =
    await Firestore.instance.collection("usuarios").document(usuarioLogado.uid).get();

    if (usuarioLogado != null) {
      if (!docUser.data["dentista"])
        Navigator.pushNamed(context, '/home');
      else
        Navigator.pushNamed(context, '/home_dentista');
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verificarUsuarioLogado();

  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        statusBarIconBrightness: Brightness.light));

    return SafeArea(
        bottom: true,
        top: true,
        child: Scaffold(
          key: _keyScaffold,
          backgroundColor: Theme.of(context).backgroundColor,
          body: SingleChildScrollView(child: ScopedModelDescendant<UserModel>(
            builder: (context, child, model) {
              if (model.isLoading)
                return Container(
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Aguarde...',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: Color(0XFF707070)),
                      )
                    ],
                  ),
                );

              return Form(
                key: _formKey,
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
                                  child: TextFormField(
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
                                    validator: (text) {
                                      if (text.isEmpty || !text.contains("@")) {
                                        setState(() {
                                          isUsuarioOK = false;
                                        });
                                      } else {
                                        setState(() {
                                          isUsuarioOK = true;
                                        });
                                      }
                                    },
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
                                  child: TextFormField(
                                    controller: senhaController,
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
                                    validator: (text) {
                                      if (text.isEmpty || text.length < 6) {
                                        setState(() {
                                          isSenhaOK = false;
                                        });
                                      } else {
                                        setState(() {
                                          isSenhaOK = true;
                                        });
                                      }
                                    },
                                  ),
                                ),
                                //Esqueci minha senha
                                Container(
                                  alignment: Alignment.center,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/reset_pass');
                                    },
                                    child: Text(
                                      'Esqueci minha senha',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
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
                          validarCampos: () async {
                            if (_formKey.currentState.validate()) {

                            }

                            model.signIn(
                              email: usuarioController.text,
                              pass: senhaController.text,
                              onSuccess: _onSucess,
                              onFail: _onFail,
                            );

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
                      child: GestureDetector(
                        onTap: () {
                          model.logoutGoogle();
                        },
                        child: buttonFacebookOne(
                          textButton: 'Entrar com Facebook',
                        ),
                      ),
                    ),
                    //Button de Acesso - Google
                    Padding(
                      padding: const EdgeInsets.only(top: 510),
                      child: GestureDetector(
                        onTap: () async {
                          final service = FirebaseService();
                          ApiResponse response = await model.signInGoogle();

                          if (response.ok) {
                            Navigator.pushNamed(context, '/home');
                          } else {
                              //alert(context, response.msg);
                          }

                        },
                        child: buttonGoogleOne(
                          textButton: 'Entrar com Google',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 570, left: 20, right: 20),
                      child: termoscondicoesLogin(),
                    )
                  ],
                ),
              );
            },
          )),
        ));
  }

  void _onSucess() {
    print("isDentista: " + isDentistaG.toString());
    if (!isDentistaG)
      Navigator.pushNamed(context, '/home');
    else
      Navigator.pushNamed(context, '/home_dentista');
  }

  void _onFail() {

    if (!isUsuarioOK || !isSenhaOK) {
      _keyScaffold.currentState.showSnackBar(SnackBar(
        content: Text(
          "Falha ao Entrar!",
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),
        action: SnackBarAction(
          textColor: Colors.white,
          label: 'Detalhe',
          onPressed: () {
            _keyScaffold.currentState
                .showSnackBar(SnackBar(
              content: Container(
                height: 90,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Usuário => não vazio e deve conter '@'",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12),
                    ),
                    Divider(color: Colors.white,),
                    Text(
                        "Senha => não vazio e deve conter no mínimo 6 caracteres",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12)),
                    Divider(color: Colors.white,),
                    Text(
                        "Outro => senha não confere",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12)),
                  ],
                ),
              ),
              backgroundColor: Colors.redAccent,
              duration: Duration(seconds: 5),
            ));
          },
        ),
      ));

    } else {
      _keyScaffold.currentState.showSnackBar(SnackBar(
        content: Text(
          "Falha ao Entrar!",
          style: TextStyle(
              fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),
      ));
    }

  }

}
