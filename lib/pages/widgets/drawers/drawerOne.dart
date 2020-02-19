import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/headers/headerMenuOdontoPlus.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuDrawer.dart';
import 'package:odontoplusapp/pages/widgets/rodapes/rodapeSitioOne.dart';



class drawerOne extends StatefulWidget {
  final Function(int) onPressed;

  const drawerOne({Key key, this.onPressed}) : super(key: key);
  @override
  _drawerOneState createState() => _drawerOneState();
}

class _drawerOneState extends State<drawerOne> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            headerMenuOdontoPlus(),
            menuDrawer(onPressed: (index) {
              this.widget.onPressed(index);
            },),
            SizedBox(height: 40),
            rodapeSitioOne()
          ],
        ),
      ),
    );
  }
}

