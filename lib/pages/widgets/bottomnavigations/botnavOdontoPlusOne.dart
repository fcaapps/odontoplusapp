import 'package:flutter/material.dart';

class bodyOdontoPlusOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return bottomNavigationBar;
  }
}

Widget get bottomNavigationBar {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(48),
      topLeft: Radius.circular(48),
    ),
    child: BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      items: [
//        BottomNavigationBarItem(icon: Icon(Icons.home, size: 35, color: Color(0XFF009B90),), title: Text('Home')),
//        BottomNavigationBarItem(icon: Icon(Icons.calendar_today, size: 35,), title: Text('Agendamento')),
//        BottomNavigationBarItem(icon: Icon(Icons.person, size: 35,), title: Text('Perfil')),

        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/home.png",
              height: 30,
              width: 30,
              color: Color(0XFF01C7B9),
            ),
            title: Text('Home')),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/calendar2.png",
              height: 30,
              width: 30,
              color: Color(0XFFACABAB),
            ),
            title: Text('Agendamento')),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/perfil2.png",
              height: 30,
              width: 30,
              color: Color(0XFFACABAB),
            ),
            title: Text('Perfil')),
      ],
    ),
  );
}
