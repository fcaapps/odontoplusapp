import 'package:flutter/material.dart';

class conveniosDetalhes extends StatefulWidget {
  @override
  _conveniosDetalhesState createState() => _conveniosDetalhesState();
}

class _conveniosDetalhesState extends State<conveniosDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Convênio',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0XFF707070)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 191,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/unimed2.png"),
                    fit: BoxFit.cover),
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0XFFD4D4D4)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text(
                      'Lorem ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0XFF707070)),
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0XFFD4D4D4),
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Text(
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque' +
                        'laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi' +
                        'architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas' +
                        'sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione' +
                        'voluptatem sequi nesciunt. ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: Color(0XFF707070)),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 30,
              width: 140,
              decoration: BoxDecoration(
                  color: Color(0XFFF52E64),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: Text(
                'CONTRATAR',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Theme.of(context).backgroundColor,
                ),
              ))
        ],
      ),
    );
  }
}
