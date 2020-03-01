import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/details/servicoDetalhes.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class ServicoDetailPage extends StatefulWidget {
  @override
  _ServicoDetailPageState createState() => _ServicoDetailPageState();
}

class _ServicoDetailPageState extends State<ServicoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: SingleChildScrollView(child: servicoDetalhes()), precisaAjuda: false,) ;
  }
}
