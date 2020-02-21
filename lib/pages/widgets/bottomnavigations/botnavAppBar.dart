import 'package:flutter/material.dart';

class botnavAppBar extends StatefulWidget {
  @override
  _botnavAppBarState createState() => _botnavAppBarState();
}

class _botnavAppBarState extends State<botnavAppBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(48),
        topLeft: Radius.circular(48),
      ),
      child: BottomAppBar(
        color: Theme.of(context).backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context,'/home');
              },
              icon: Image.asset(
                "assets/icons/home.png",
                height: 30,
                width: 30,
                color: Color(0XFF01C7B9),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context,'/agendar');
              },
              icon: Image.asset(
                "assets/icons/calendar2.png",
                height: 30,
                width: 30,
                color: Color(0XFF01C7B9),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context,'/perfil');
              },
              icon: Image.asset(
                "assets/icons/perfil2.png",
                height: 30,
                width: 30,
                color: Color(0XFF01C7B9),
              ),
            )
          ],
        ),
      )
    );
  }
}
