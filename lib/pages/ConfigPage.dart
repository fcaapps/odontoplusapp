import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/configs/configOne.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: configOne(), precisaAjuda: false,);
  }
}
