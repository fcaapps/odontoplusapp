import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/details/conveniosDetalhes.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class ConvenioDetailPage extends StatefulWidget {
  @override
  _ConvenioDetailPageState createState() => _ConvenioDetailPageState();
}

class _ConvenioDetailPageState extends State<ConvenioDetailPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: SingleChildScrollView(child: conveniosDetalhes()), precisaAjuda: false,) ;
  }
}
