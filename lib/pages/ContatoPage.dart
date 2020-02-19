import 'package:flutter/material.dart';

import 'HomePage.dart';

class ContatoPage extends StatefulWidget {
  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _keyScaffold,
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('DRAWER'),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Contato Page'),
          centerTitle: true,
        ));
  }
}
