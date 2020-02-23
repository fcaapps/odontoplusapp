import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/lists/ListaOdontoPlusConvenios.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class ConveniosPage extends StatefulWidget {
  @override
  _ConveniosPageState createState() => _ConveniosPageState();
}

class _ConveniosPageState extends State<ConveniosPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: SingleChildScrollView(child: ListaOdontoPlusConvenios()), precisaAjuda: false,);
  }
}
