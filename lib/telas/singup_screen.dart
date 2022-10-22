import 'dart:html';

import 'package:flutter/material.dart';



class TelaCadastro extends StatelessWidget {


  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.black,
        key: _formKey,
        child: ListView(children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("assets/13demaio.png"),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
            TextFormField(keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Telefone",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Confirmar Senha",
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 16.0,),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: null,
                child: Text("Esqueci minha senha",
                  textAlign: TextAlign.right,
                ),
                padding: EdgeInsets.zero,
              ),
            ),
            Container(
              width: 16,
              height: 60,
              child: FlatButton(
                color: Colors.red,
                onPressed: (){
                Navigator.pushNamed(context, ('/'),);

              },
                  child: Text("Cadastrar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
