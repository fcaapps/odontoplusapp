import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/headers/textoHeaderApp.dart';

class termoscondicoesOne extends StatefulWidget {
  @override
  _termoscondicoesOneState createState() => _termoscondicoesOneState();
}

class _termoscondicoesOneState extends State<termoscondicoesOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          elevation: 0,
          backgroundColor: Theme.of(context).backgroundColor,
          title: textoHeaderApp(
            corTextoOdonto: Theme.of(context).primaryColor,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            color: Theme.of(context).backgroundColor,
            child: Column(
              children: <Widget>[
                Text(
                  'TERMOS E CONDIÇÕES',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0XFF707070)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque' +
                        'laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi' +
                        'architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas' +
                        'sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione' +
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque' +
                        'laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi' +
                        'architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas' +
                        'sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione' +
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque' +
                        'laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi' +
                        'architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas' +
                        'sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione' +
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque' +
                        'laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi' +
                        'architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas' +
                        'sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione' +
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque' +
                        'laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi' +
                        'architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas' +
                        'sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione' +
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
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 42,
                    width: 278,
                    decoration: BoxDecoration(
                        color: Color(0XFFF52E64),
                        borderRadius: BorderRadius.circular(50)),
                    alignment: Alignment.center,
                    child: Text(
                      'CONCORDO',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
