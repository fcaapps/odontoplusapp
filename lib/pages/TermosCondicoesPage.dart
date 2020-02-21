import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';
import 'package:odontoplusapp/pages/widgets/termos/termoscondicoesOne.dart';

class TermosCondicoesPage extends StatefulWidget {
  @override
  _TermosCondicoesPageState createState() => _TermosCondicoesPageState();
}

class _TermosCondicoesPageState extends State<TermosCondicoesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: termoscondicoesOne(),
    );
  }
}
