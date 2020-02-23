import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/contact/ContatoOne.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

import 'HomePage.dart';

class ContatoPage extends StatefulWidget {
  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: ContatoOne(), precisaAjuda: false,);
  }
}
