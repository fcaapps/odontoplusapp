import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/contact/ContatoTwo.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: ContatoTwo(), precisaAjuda: true,);
  }
}
