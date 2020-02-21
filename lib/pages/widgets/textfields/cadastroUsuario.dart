import 'package:flutter/material.dart';

class cadastroUsuario extends StatefulWidget {
  @override
  _cadastroUsuarioState createState() => _cadastroUsuarioState();
}

class _cadastroUsuarioState extends State<cadastroUsuario> {

  IconData iconSenha = Icons.lock_outline;
  IconData iconSenhaCS = Icons.lock_outline;
  bool escondeTextoS = true;
  bool escondeTextoCS = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      height: 500,
      child: Material(
        child: Column(
          children: <Widget>[
            //Nome completo
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Color(0XFFD4D4D4), width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                style: Theme.of(context).textTheme.display2,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Nome completo',
                  hintStyle: Theme.of(context).textTheme.display1,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Email
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Color(0XFFD4D4D4), width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: Theme.of(context).textTheme.display2,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'E-mail',
                  hintStyle: Theme.of(context).textTheme.display1,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Telefone
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Color(0XFFD4D4D4), width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style: Theme.of(context).textTheme.display2,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Telefone',
                  hintStyle: Theme.of(context).textTheme.display1,
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
                    color: Colors.transparent,
                    border: Border.all(color: Color(0XFFD4D4D4), width: 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        obscureText: escondeTextoS,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          hintText: 'Digite Senha',
                          hintStyle: Theme.of(context).textTheme.display1,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (iconSenha == Icons.lock_outline) {
                                iconSenha = Icons.lock_open;
                                escondeTextoS = false;
                              } else {
                                iconSenha = Icons.lock_outline;
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
                    border: Border.all(color: Color(0XFFD4D4D4), width: 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        obscureText: escondeTextoCS,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          hintText: 'Confirme Senha',
                          hintStyle: Theme.of(context).textTheme.display1,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (iconSenhaCS == Icons.lock_outline) {
                                iconSenhaCS = Icons.lock_open;
                                escondeTextoCS = false;
                              } else {
                                iconSenhaCS = Icons.lock_outline;
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
    );
  }
}
