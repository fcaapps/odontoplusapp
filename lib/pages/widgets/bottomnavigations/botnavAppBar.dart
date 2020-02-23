import 'package:flutter/material.dart';

import '../../../main.dart';

class botnavAppBar extends StatefulWidget {
  @override
  _botnavAppBarState createState() => _botnavAppBarState();
}

class _botnavAppBarState extends State<botnavAppBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(65),
        topLeft: Radius.circular(65),
      ),
      child: BottomAppBar(
        color: Theme.of(context).backgroundColor,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/home');
                  setState(() {
                    imageHome = "assets/icons/home.png";
                    imageAgendar = "assets/icons/calendar2.png";
                    imagePerfil = "assets/icons/perfil2.png";
                  });
                },
                icon: Image.asset(
                  imageHome,
                  height: 30,
                  width: 30,
                  color: Color(0XFF01C7B9),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/agendar');
                  setState(() {
                    imageHome = "assets/icons/home2.png";
                    imageAgendar = "assets/icons/calendar_drawer.png";
                    imagePerfil = "assets/icons/perfil2.png";
                  });
                },
                icon: Image.asset(
                  imageAgendar,
                  height: 30,
                  width: 30,
                  color: Color(0XFF01C7B9),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/perfil');
                  setState(() {
                    imageHome = "assets/icons/home2.png";
                    imageAgendar = "assets/icons/calendar2.png";
                    imagePerfil = "assets/icons/perfil3.png";
                  });
                },
                icon: Image.asset(
                  imagePerfil,
                  height: 30,
                  width: 30,
                  color: Color(0XFF01C7B9),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
