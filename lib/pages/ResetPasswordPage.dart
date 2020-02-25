import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: <BoxShadow>[
                      BoxShadow(color: Color(0XFF707070), blurRadius: 2)
                    ]),
                child: Icon(
                  Icons.no_encryption,
                  color: Color(0XFF707070),
                  size: 80,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Esqueceu sua senha?",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Por favor, informe o E-mail associado a sua conta que enviaremos um link com as instruções para restauração de sua senha.",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF707070)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                      color: Color(0XFF707070),
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
              style: TextStyle(color: Color(0XFF707070),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            GestureDetector(
              onTap: () {
//                FirebaseAuth auth = FirebaseAuth.instance;
//                auth.sendPasswordResetEmail(email: _emailController.text);
//                Navigator.pushReplacement(context,
//                    MaterialPageRoute(builder: (context) {
//                  return LoginPage(
//                    warning: "Um link para resetar a senha foi enviado para " +
//                        _emailController.text,
//                    isVisible: true,
//                  );
//                }));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
//                    gradient: LinearGradient(
//                        begin: Alignment.topLeft,
//                        end: Alignment.bottomRight,
//                        stops: [0.3, 1],
//                        colors: [Theme.of(context).primaryColor, Colors.green])
                ),
                child: Text(
                  'ENVIAR',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
