import 'package:flutter/material.dart';
import 'package:trezedemaiobarbearia/telas/login_screen.dart';
import 'package:trezedemaiobarbearia/telas/singup_screen.dart';
import 'package:trezedemaiobarbearia/telas/tela_inical.dart';
import 'package:trezedemaiobarbearia/telas/tela_agenda.dart';
import 'package:trezedemaiobarbearia/telas/tela_perfil.dart';


void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '13 De Maio',
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => TelaLogin(),
        '/cadastro': (context) => TelaCadastro(),
        '/home': (context) => Telainical(),
        '/agenda': (context) => TelaAgenda(),
        '/profile': (context) => ProfilePageDesign(),
      },
    );
  }
}

