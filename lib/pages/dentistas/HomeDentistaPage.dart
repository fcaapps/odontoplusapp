import 'package:flutter/material.dart';
import 'package:odontoplusapp/pages/widgets/bottomnavigations/botnavAppBar.dart';
import 'package:odontoplusapp/pages/widgets/drawers/drawerTwo.dart';
import 'package:odontoplusapp/pages/widgets/headers/textoHeaderApp.dart';

import '../../main.dart';

class HomeDentistaPage extends StatefulWidget {
  @override
  _HomeDentistaPageState createState() => _HomeDentistaPageState();
}

class _HomeDentistaPageState extends State<HomeDentistaPage> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  int posPixelInicialPage = 0;
  bool checkBoxValue = true;

  Color _corAppBarAposMovimento() {
    return posPixelInicialPage < 60
        ? Theme.of(context).backgroundColor
        : Theme.of(context).primaryColor;
  }

  Widget _bodyHome() {
    return Container(
      color: Theme.of(context).primaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: textoHeaderApp(
                corTextoOdonto: Theme.of(context).backgroundColor,
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.all(1),
                  height: 97,
                  width: 97,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset(
                      "assets/images/testes/man.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Dr. Gustavo Sintra',
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Seja bem vindo!',
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 26, color: Colors.white),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              height: 58,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Notificações e Consultas Agendadas',
                      style: TextStyle(
                          fontFamily: 'Gibson',
                          fontSize: 11,
                          color: Color(0XFF24A9A0)),
                    ),
                    Text(
                      'Dr. Gustavo',
                      style: TextStyle(
                          fontFamily: 'Gibson',
                          fontSize: 15,
                          color: Color(0XFF707070)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/brick.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
            color: Colors.white,
          )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/entrepreneur.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
            color: Colors.white,
          )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/girl.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
            color: Colors.white,
          )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/avatar3.jfif",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
            color: Colors.white,
          )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/woman.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
            color: Colors.white,
          )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/brick.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/entrepreneur.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/girl.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/avatar3.jfif",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/woman.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/brick.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/entrepreneur.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/girl.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/avatar3.jfif",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/woman.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/brick.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/entrepreneur.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/girl.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/avatar3.jfif",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
          SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/testes/woman.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                    Text(
                      'Qualquer coisa assim',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0XFF707070)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Divider(
                color: Colors.white,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    setState(() {
      imageHome = "assets/icons/home.png";
      imageAgendar = "assets/icons/calendar2.png";
      imagePerfil = "assets/icons/perfil2.png";
    });

//    return SafeArea(
//        bottom: true,
//        top: true,
//        child: Scaffold(
//          body: _bodyHome(),
//          endDrawer: drawerTwo(
//            onPressed: (index) {
//              _keyScaffold.currentState.openEndDrawer();
//            },
//          ),
//          bottomNavigationBar: botnavAppBar(),
//        ));
    return SafeArea(
      bottom: true,
      top: true,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Scaffold(
          key: _keyScaffold,
          backgroundColor: Colors.transparent,
          drawer: drawerTwo(
            onPressed: (index) {
              _keyScaffold.currentState.openEndDrawer();
            },
          ),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(65),
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
          body: Container(
            color: Theme.of(context).primaryColor,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.all(1),
                      height: 97,
                      width: 97,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          "assets/images/testes/man.jpg",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Dr. Gustavo Sintra',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Seja bem vindo!',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 26,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 58,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Notificações e Consultas Agendadas',
                          style: TextStyle(
                              fontFamily: 'Gibson',
                              fontSize: 11,
                              color: Color(0XFF24A9A0)),
                        ),
                        Text(
                          'Dr. Gustavo',
                          style: TextStyle(
                              fontFamily: 'Gibson',
                              fontSize: 15,
                              color: Color(0XFF707070)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/brick.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/entrepreneur.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/girl.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/avatar3.jfif",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/woman.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/brick.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/entrepreneur.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/girl.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/avatar3.jfif",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/woman.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/brick.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/entrepreneur.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/girl.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/avatar3.jfif",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/woman.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/brick.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/entrepreneur.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/girl.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/avatar3.jfif",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/testes/woman.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                        Text(
                          'Qualquer coisa assim',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0XFF707070)),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
              ],
            ),
          ),
          bottomNavigationBar: botnavAppBar(),
        ),
      ),
    );
  }
}
