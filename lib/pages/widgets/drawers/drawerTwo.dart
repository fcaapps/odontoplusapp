import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerMenuOdontoPlus.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuDrawer.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuDrawer2.dart';
import 'package:odontoplusapp/pages/widgets/rodapes/rodapeSitioOne.dart';

class drawerTwo extends StatefulWidget {
  final Function(int) onPressed;

  const drawerTwo({Key key, this.onPressed})
      : super(key: key);

  @override
  _drawerTwoState createState() => _drawerTwoState();
}

class _drawerTwoState extends State<drawerTwo> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            headerMenuOdontoPlus(),
            menuDrawer2(),
            SizedBox(height: 40),
            rodapeSitioOne()
          ],
        ),
      ),
    );
  }
}
