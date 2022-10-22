import 'package:flutter/material.dart';
import 'package:trezedemaiobarbearia/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  //const CustomDrawer({Key? key}) : super(key: key);




  final PageController pageController;

  // ignore: use_key_in_widget_constructors
  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {

    Widget _buildDrawerBack() =>Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assests/imagens/corte1.jpg')
          ),
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(0,0, 0, 0),
                Color.fromARGB(255,255, 255, 255)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
    );
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: const EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: const <Widget>[
                    Positioned(
                        top: 8.0,
                        left: 0.0,
                        child: Text("Barbearia \n13 de Maio",
                          style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
                        )
                    )
                  ],
                ),
              ),

              Divider(),
              DrawerTile(Icons.home, "Inicio", pageController,0),
              DrawerTile(Icons.person, "Meu Perfil", pageController,1),
              DrawerTile(Icons.calendar_month_outlined, "Agendamentos", pageController,2),
              DrawerTile(Icons.exit_to_app, "Sair", pageController,3),
            ],
          )
        ],
      ),
    );
  }
}