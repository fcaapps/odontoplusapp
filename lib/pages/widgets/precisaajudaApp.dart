import 'package:flutter/material.dart';

class precisaajudaApp extends StatelessWidget {
  final bool visivel;

  const precisaajudaApp({Key key, this.visivel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visivel,
      child: Stack(children: <Widget>[
        Positioned(
          top: 2,
          left: 2,
          right: -3,
          bottom: 2,
          child: Container(
              height: 64,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60)),
//                  boxShadow: <BoxShadow>[
//                    BoxShadow(
//                        color: Colors.black26,
//                        blurRadius: 6,
//                        offset: Offset(4.0, 6.0))
//                  ]
              )),
        ),

        Opacity(
          opacity: 0.6,
          child: Container(
              margin: EdgeInsets.fromLTRB(4, 4, 0, 2),
              height: 56,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0XFF24A9A0),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
              )),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(2, 2, 0, 2),
          height: 60,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60), bottomLeft: Radius.circular(60)),
          ),
          //margin: EdgeInsets.fromLTRB(40,1,0,0),
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Precisa',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).backgroundColor),
                ),
                Text(
                  'de Ajuda?',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).backgroundColor),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
