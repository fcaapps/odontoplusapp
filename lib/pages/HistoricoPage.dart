import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/lists/ListaOdontoPlusHistorico.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class HistoricoPage extends StatefulWidget {
  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: SingleChildScrollView(child: ListaOdontoPlusHistorico()), precisaAjuda: false,) ;
  }
}
