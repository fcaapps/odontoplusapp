import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/AgendarPage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/HomePage.dart';
import 'file:///C:/Projetos/Flutter/aplicativos/odontoplusapp/lib/pages/pacientes/PerfilPage.dart';
import 'package:odontoplusapp/pages/widgets/bottomnavigations/botnavAppBar.dart';
import 'package:odontoplusapp/pages/widgets/drawers/drawerOne.dart';
import 'package:odontoplusapp/pages/widgets/headers/textoHeaderApp.dart';
import 'package:odontoplusapp/pages/widgets/menus/menuInicial.dart';
import 'package:odontoplusapp/pages/widgets/precisaajudaApp.dart';

class scaffOdontoHome extends StatefulWidget {
  @override
  _scaffOdontoHomeState createState() => _scaffOdontoHomeState();
}

class _scaffOdontoHomeState extends State<scaffOdontoHome> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  int posPixelInicialPage = 0;

  Color _corAppBarAposMovimento() {
    return posPixelInicialPage < 60
        ? Theme.of(context).backgroundColor
        : Theme.of(context).primaryColor;
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
              color: Theme.of(context).primaryColor,
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
                preferredSize: Size.fromHeight(60),
                child: AppBar(
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
                  IconThemeData(color: Theme.of(context).primaryColor),
                  elevation: 0,
                  backgroundColor: Theme.of(context).backgroundColor,
                  //Texto do Header
                  title: textoHeaderApp(
                    corTextoOdonto: Theme.of(context).primaryColor,
                  ),
                  centerTitle: true,
                  //brightness: Brightness.dark,
                ),
              ),
              body: NotificationListener<ScrollUpdateNotification>(
                  child: SingleChildScrollView(
                    child: menuInicial(),
                  ),
                  onNotification: (notification) {
                    //print(notification.scrollDelta);
                    setState(() {
                      posPixelInicialPage =
                          notification.metrics.pixels.truncate();
                      print(notification.metrics.pixels);
                    });
                  }),
              bottomNavigationBar: botnavAppBar(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 130, left: MediaQuery.of(context).size.width - 100),
              child: precisaajudaApp(
                visivel: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
