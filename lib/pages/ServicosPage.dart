import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/lists/ListaOdontoPlusServicos.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoGeral.dart';

class ServicosPage extends StatefulWidget {
  @override
  _ServicosPageState createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
  @override
  Widget build(BuildContext context) {
    return scaffOdontoGeral(pagina: SingleChildScrollView(child: ListaOdontoPlusServicos()), precisaAjuda: false,) ;
  }
}
