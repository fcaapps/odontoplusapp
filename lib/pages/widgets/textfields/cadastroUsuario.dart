import 'package:flutter/material.dart';

class cadastroUsuario extends StatefulWidget {
  @override
  _cadastroUsuarioState createState() => _cadastroUsuarioState();
}

class _cadastroUsuarioState extends State<cadastroUsuario> {
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
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Color(0XFFD4D4D4), width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                obscureText: true,
                style: Theme.of(context).textTheme.display2,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Senha',
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
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Color(0XFFD4D4D4), width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                obscureText: true,
                style: Theme.of(context).textTheme.display2,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Confirme sua Senha',
                  hintStyle: Theme.of(context).textTheme.display1,
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
