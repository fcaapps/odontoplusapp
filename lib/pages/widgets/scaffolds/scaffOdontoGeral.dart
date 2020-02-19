import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odontoplusapp/pages/widgets/bottomnavigations/botnavOdontoPlusOne.dart';
import 'package:odontoplusapp/pages/widgets/contact/ContatoOne.dart';
import 'package:odontoplusapp/pages/widgets/drawers/drawerOne.dart';
import 'package:odontoplusapp/pages/widgets/headers/textoHeaderApp.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuInicial.dart';

import '../precisaajudaApp.dart';

class scaffOdontoGeral extends StatefulWidget {
  final Widget pagina;
  final bool precisaAjuda;

  const scaffOdontoGeral({Key key, this.pagina, this.precisaAjuda}) : super(key: key);
  @override
  _scaffOdontoGeralState createState() => _scaffOdontoGeralState();
}

class _scaffOdontoGeralState extends State<scaffOdontoGeral> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  int posPixelInicialPage = 0;

  //Cor do appBAr após movimento de ListView

  Color _corAppBarAposMovimento() {
    return posPixelInicialPage < 200
        ? Theme.of(context).primaryColor
        : Theme.of(context).backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: true,
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Stack(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height / 4,
                width: double.infinity,
                color: _corAppBarAposMovimento()),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 150),
              color: Theme.of(context).backgroundColor,
              width: double.infinity,
            ),
            Scaffold(
              key: _keyScaffold,
              backgroundColor: Colors.transparent,
              drawer: drawerOne(
                onPressed: (index) {
                  _keyScaffold.currentState.openEndDrawer();
                },
              ),
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(65),
                child: AppBar(
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Theme.of(context).platform == TargetPlatform.iOS ? Icon(Icons.arrow_back_ios) : Icon(Icons.arrow_back),
                  ),
                  automaticallyImplyLeading: false,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                  actions: <Widget>[
                    IconButton(
                        icon: new Icon(Icons.menu),
                        onPressed: () {
                          _keyScaffold.currentState.openDrawer();
                        }),
                  ],
                  iconTheme:
                  IconThemeData(color: Theme.of(context).backgroundColor),
                  actionsIconTheme:
                  IconThemeData(color: Theme.of(context).backgroundColor),
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  //Texto do Header
                  title: textoHeaderApp(
                    corTextoOdonto: Theme.of(context).backgroundColor,
                  ),
                  centerTitle: true,
                  //brightness: Brightness.dark,
                ),
              ),
              body: NotificationListener<ScrollUpdateNotification>(
                  child: SingleChildScrollView(
                    child: this.widget.pagina,
                  ),
                  onNotification: (notification) {
                    //print(notification.scrollDelta);
                    setState(() {
                      posPixelInicialPage =
                          notification.metrics.pixels.truncate();
                      print(notification.metrics.pixels);
                    });
                  }),
              bottomNavigationBar: bottomNavigationBar,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 130, left: MediaQuery.of(context).size.width - 100),
              child: precisaajudaApp(
                visivel: this.widget.precisaAjuda == null ? false : this.widget.precisaAjuda,
              ),
            )
          ],
        ),
      ),
    );
  }
}
