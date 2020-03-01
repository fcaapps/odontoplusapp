import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonPrimary.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerLogin.dart';
import 'package:odontoplusapp/pages/widgets/termoscondicoesLogin.dart';
import 'package:scoped_model/scoped_model.dart';

class CadastroUsuarioPage extends StatefulWidget {
  @override
  _CadastroUsuarioPageState createState() => _CadastroUsuarioPageState();
}

class _CadastroUsuarioPageState extends State<CadastroUsuarioPage> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmsenhaController = TextEditingController();

  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  bool checkBoxValue = false;
  IconData iconSenha = Icons.lock_outline;
  IconData iconSenhaCS = Icons.lock_outline;
  bool escondeTextoS = true;
  bool escondeTextoCS = true;

  bool isNomeCompletoOK;
  bool isEmailOK;
  bool isTelefoneOK;
  bool isSenhaOK;
  bool isConfirmaSenhaOK;

  @override
  Widget build(BuildContext context) {
//    _nomeController.text = "Fernando";
//    _emailController.text = "fca.apps@gmail.com";
//    _telefoneController.text = "85988121008";
//    _senhaController.text = "123456";
//    _confirmsenhaController.text = "123456";

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        statusBarIconBrightness: Brightness.light));
    return SafeArea(
        bottom: true,
        top: true,
        child: Scaffold(
            key: _keyScaffold,
            //height: MediaQuery.of(context).size.height,
            backgroundColor: Theme.of(context).backgroundColor,
            body: SingleChildScrollView(
              child: ScopedModelDescendant<UserModel>(
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
//                          SizedBox(
//                            height: 10,
//                          ),
//                          Text(
//                            'Salvando Dados...',
//                            style: TextStyle(
//                                fontFamily: 'Roboto',
//                                fontSize: 14,
//                                color: Color(0XFF707070)
//                            ),
//                          )
                        ],
                      ),
                    );

                  return Form(
                    key: _formKey,
                    child: Stack(
                      children: <Widget>[
                        //HeaderLogin
                        headerLogin(),
                        Padding(
                          padding: const EdgeInsets.only(top: 160),
                          child: Container(
                            margin: EdgeInsets.all(40),
                            height: 500,
                            child: Material(
                              child: Column(
                                children: <Widget>[
                                  //Nome completo
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        border: Border.all(
                                            color: Color(0XFFD4D4D4), width: 1),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: TextFormField(
                                      controller: _nomeController,
                                      style:
                                          Theme.of(context).textTheme.display2,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        hintText: 'Nome completo',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .display1,
                                        border: InputBorder.none,
                                      ),
                                      validator: (text) {
                                        if (text.isEmpty) {
                                          setState(() {
                                            isNomeCompletoOK = false;
                                          });
                                        } else {
                                          setState(() {
                                            isNomeCompletoOK = true;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  //Email
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        border: Border.all(
                                            color: Color(0XFFD4D4D4), width: 1),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: TextFormField(
                                        controller: _emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        style: Theme.of(context)
                                            .textTheme
                                            .display2,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(left: 20),
                                          hintText: 'E-mail',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .display1,
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text.isEmpty ||
                                              !text.contains("@")) {
                                            setState(() {
                                              isEmailOK = false;
                                            });
                                          } else {
                                            setState(() {
                                              isEmailOK = true;
                                            });
                                          }
                                        }),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  //Telefone
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        border: Border.all(
                                            color: Color(0XFFD4D4D4), width: 1),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: TextFormField(
                                        controller: _telefoneController,
                                        keyboardType: TextInputType.phone,
                                        style: Theme.of(context)
                                            .textTheme
                                            .display2,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(left: 20),
                                          hintText: 'Telefone',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .display1,
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text.isEmpty) {
                                            setState(() {
                                              isTelefoneOK = false;
                                            });
                                          } else {
                                            setState(() {
                                              isTelefoneOK = true;
                                            });
                                          }
                                        }),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  //Senha
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Color(0XFFD4D4D4),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 4,
                                            child: TextFormField(
                                                controller: _senhaController,
                                                obscureText: escondeTextoS,
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black45,
                                                ),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(left: 20),
                                                  hintText: 'Digite Senha',
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .display1,
                                                  border: InputBorder.none,
                                                ),
                                                validator: (text) {
                                                  if (text.isEmpty ||
                                                      text.length < 6) {
                                                    setState(() {
                                                      isSenhaOK = false;
                                                    });
                                                  } else {
                                                    setState(() {
                                                      isSenhaOK = true;
                                                    });
                                                  }
                                                }),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (iconSenha ==
                                                        Icons.lock_outline) {
                                                      iconSenha =
                                                          Icons.lock_open;
                                                      escondeTextoS = false;
                                                    } else {
                                                      iconSenha =
                                                          Icons.lock_outline;
                                                      escondeTextoS = true;
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  iconSenha,
                                                  color: Colors.black54,
                                                  size: 20,
                                                ),
                                              ))
                                        ],
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  //Confirma Senha
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Color(0XFFD4D4D4),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 4,
                                            child: TextFormField(
                                                controller:
                                                    _confirmsenhaController,
                                                obscureText: escondeTextoCS,
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black45,
                                                ),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(left: 20),
                                                  hintText: 'Confirme Senha',
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .display1,
                                                  border: InputBorder.none,
                                                ),
                                                validator: (text) {
                                                  if (text.isEmpty ||
                                                      text.length < 6) {
                                                    setState(() {
                                                      isConfirmaSenhaOK = false;
                                                    });
                                                  } else {
                                                    setState(() {
                                                      isConfirmaSenhaOK = true;
                                                    });
                                                  }
                                                }),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (iconSenhaCS ==
                                                        Icons.lock_outline) {
                                                      iconSenhaCS =
                                                          Icons.lock_open;
                                                      escondeTextoCS = false;
                                                    } else {
                                                      iconSenhaCS =
                                                          Icons.lock_outline;
                                                      escondeTextoCS = true;
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  iconSenhaCS,
                                                  color: Colors.black54,
                                                  size: 20,
                                                ),
                                              ))
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
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
                            padding: const EdgeInsets.only(top: 525),
                            child: buttonPrimary(
                              textButton: 'CONFIRMAR',
                              isLoading: isLoading,
                              widthButao:
                                  MediaQuery.of(context).size.width - 60,
                              heightButao: 48,
                              validarCampos: () {
                                print("isNomeCompletoOK: " +
                                    isNomeCompletoOK.toString());
                                print("isEmailOK: " +
                                    isNomeCompletoOK.toString());
                                print(
                                    "isTelefoneOK: " + isTelefoneOK.toString());
                                print("isSenhaOK: " + isSenhaOK.toString());
                                print("isConfirmaSenhaOK: " +
                                    isConfirmaSenhaOK.toString());

                                if (_formKey.currentState.validate()) {
                                  if (!isNomeCompletoOK ||
                                      !isEmailOK ||
                                      !isTelefoneOK ||
                                      !isSenhaOK ||
                                      !isConfirmaSenhaOK) {
                                    _keyScaffold.currentState
                                        .showSnackBar(SnackBar(
                                      content: Text(
                                        "Favor preencher campos obrigatórios...",
                                        style: TextStyle(
                                            fontFamily: 'Roboto', fontSize: 13),
                                      ),
                                      backgroundColor: Color(0XFF707070),
                                      duration: Duration(seconds: 2),
                                      action: SnackBarAction(
                                        textColor:
                                            Theme.of(context).primaryColor,
                                        label: 'Detalhes',
                                        onPressed: () {
                                          _keyScaffold.currentState
                                              .showSnackBar(SnackBar(
                                            content: Container(
                                              height: 110,
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "Nome completo => campo obrigatório",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12),
                                                  ),
                                                  Divider(),
                                                  Text(
                                                      "E-mail => campo obrigatório e deve conter '@'",
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 12)),
                                                  Divider(),
                                                  Text(
                                                    "Telefone => campo obrigatório",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12),
                                                  ),
                                                  Divider(),
                                                  Text(
                                                    "Senha => campo obrigatório e no mínimo 6 caracteres",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            backgroundColor: Color(0XFF707070),
                                            duration: Duration(seconds: 5),
                                          ));
                                        },
                                      ),
                                    ));

                                    if (_senhaController.text !=
                                        _confirmsenhaController.text) {
                                      _keyScaffold.currentState
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                          "Senha não confere...",
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 13),
                                        ),
                                        backgroundColor: Color(0XFF707070),
                                        duration: Duration(seconds: 2),
                                      ));
                                    }
                                  } else {
                                    Map<String, dynamic> userData = {
                                      "nome": _nomeController.text,
                                      "email": _emailController.text,
                                      "telefone": _telefoneController.text,
                                      "dentista": checkBoxValue,
                                      "urlFoto": ""
                                    };

//                                    print("userData: " + userData.toString());

//                                    Firestore.instance.collection("usuarios").document("teste").setData(userData);

                                    model.signUp(
                                        userData: userData,
                                        pass: _senhaController.text,
                                        onSuccess: _onSucess,
                                        onFail: _onFail);
                                  }
                                }
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 580, left: 20, right: 20),
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
                  );
                },
              ),
            )));
  }

  void _onSucess() {
    _keyScaffold.currentState.showSnackBar(SnackBar(
      content: Text("Usuário criado com sucesso!"),
      backgroundColor: Color(0XFF707070),
      duration: Duration(seconds: 2),
    ));

    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.of(context).pop();
    });
  }

  void _onFail() {
    _keyScaffold.currentState.showSnackBar(SnackBar(
      content: Container(
          height: 12,
          alignment: Alignment.topLeft,
          child: Text(
            "Falha ao criar usuário!",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12
            ),
          )),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2),
    ));
  }
}
