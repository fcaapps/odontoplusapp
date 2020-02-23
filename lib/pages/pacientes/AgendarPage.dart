import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class AgendarPage extends StatefulWidget {
  @override
  _AgendarPageState createState() => _AgendarPageState();
}

class _AgendarPageState extends State<AgendarPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(precisaAjuda: false,);
  }
}
