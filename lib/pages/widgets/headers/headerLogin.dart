import 'package:flutter/material.dart';

//Cabeçalho padrão
class headerLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.4,
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo_header2.jpg"),
                  fit: BoxFit.cover,
              ),
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            alignment: Alignment.center,
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
          alignment: Alignment.center,
          child: Image.asset("assets/images/logo_header.png", fit: BoxFit.cover, height: 68, width: 68,),
        ),
      ],
    );
  }
}
