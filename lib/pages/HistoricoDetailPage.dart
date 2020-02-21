import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/details/historicoDetalhes.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class HistoricoDetailPage extends StatefulWidget {
  @override
  _HistoricoDetailPageState createState() => _HistoricoDetailPageState();
}

class _HistoricoDetailPageState extends State<HistoricoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: SingleChildScrollView(child: historicoDetalhes()), precisaAjuda: false,) ;
  }
}
