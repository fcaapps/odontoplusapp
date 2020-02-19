import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/contact/ContatoTwo.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class DadosPage extends StatefulWidget {
  @override
  _DadosPageState createState() => _DadosPageState();
}

class _DadosPageState extends State<DadosPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: ContatoTwo(), precisaAjuda: true,);
  }
}
