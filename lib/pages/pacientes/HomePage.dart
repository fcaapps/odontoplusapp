import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/scaffolds/scaffOdontoHome.dart';

import '../../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return scaffOdontoHome();
  }
}
