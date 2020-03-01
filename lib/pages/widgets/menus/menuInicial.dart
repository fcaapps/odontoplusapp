import 'package:flutter/material.dart';
import 'package:odontoplusapp/models/user_model.dart';
import 'package:odontoplusapp/pages/widgets/buttons/buttonMenuInicialOne.dart';
import 'package:odontoplusapp/pages/widgets/congratulations/bemvindoOne.dart';
import 'package:scoped_model/scoped_model.dart';

class menuInicial extends StatefulWidget {
  @override
  _menuInicialState createState() => _menuInicialState();
}

class _menuInicialState extends State<menuInicial> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Container(
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                bemvindoOne(),
                SizedBox(height: 10,),
                Divider(),
                SizedBox(height: 10,),
                //Linha 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //Serviços
                    buttonMenuInicial(
                      imageButton: Image.asset(
                        "assets/icons/servicos.png",
                        height: 55.66,
                        width: 64.91,
                        color: Color(0XFF24A9A0),
                      ),
                      textoButton: 'Serviços',
                      onTap: () {
                        //Abrindo Tela de Serviços
                        Navigator.pushNamed(context, '/servicos');
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Agendamentos
                    buttonMenuInicial(
                      imageButton: Image.asset(
                        "assets/icons/agendamento.png",
                        height: 55.66,
                        width: 64.91,
                        color: Color(0XFF24A9A0),
                      ),
                      textoButton: 'Agendamentos',
                      onTap: () {
                        //Abrindo Tela de Agendamento
                        Navigator.pushNamed(context, '/agendar');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                //Linha 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //Contato
                    buttonMenuInicial(
                      imageButton: Image.asset(
                        "assets/icons/contato.png",
                        height: 55.66,
                        width: 64.91,
                        color: Color(0XFF24A9A0),
                      ),
                      textoButton: 'Contato',
                      onTap: () {
                        //Abrindo Tela de Contato
                        Navigator.pushNamed(context, '/contato');
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Histórico
                    buttonMenuInicial(
                      imageButton: Image.asset(
                        "assets/icons/historico.png",
                        height: 55.66,
                        width: 64.91,
                        color: Color(0XFF24A9A0),
                      ),
                      textoButton: 'Histórico',
                      onTap: () {
                        //Abrindo Tela de Histórico
                        Navigator.pushNamed(context, '/historico');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                //Linha 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //Dados
                    buttonMenuInicial(
                      imageButton: Image.asset(
                        "assets/icons/dados.png",
                        height: 55.66,
                        width: 64.91,
                        color: Color(0XFF24A9A0),
                      ),
                      textoButton: 'Dados',
                      onTap: () {
//                    //Abrindo Tela de Dados
                        Navigator.pushNamed(context, '/dados');
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Convênios
                    buttonMenuInicial(
                      imageButton: Image.asset(
                        "assets/icons/convenios.png",
                        height: 55.66,
                        width: 64.91,
                        color: Color(0XFF24A9A0),
                      ),
                      textoButton: 'Convênios',
                      onTap: () {
//                    //Abrindo Tela de Convênios
                        Navigator.pushNamed(context, '/convenios');
                      },
                    ),
                  ],
                ),SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        );
      },

    );
  }
}
