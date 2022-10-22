import 'package:flutter/material.dart';


class TelaLogin extends StatelessWidget {


  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.black,
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/imagens/13demaio.png"),
            ),
            const SizedBox(height: 16.0,),
            TextFormField( keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 16.0,),
            TextFormField(keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: FlatButton(onPressed: null,
                padding: EdgeInsets.zero,
                  child: Text("Esqueci minha senha",
                  textAlign: TextAlign.right,
                  ),
              ),
            ),
            const SizedBox(height: 16.0,),
            Container(
              height: 44.0,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, ('/home'),);
                },
                style: ButtonStyle(


                ),
                child: Text("Entrar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                ),
            ),
            const SizedBox(height: 16.0,),
            Container(
              width: 40,
              height: 40,
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, ('/cadastro'),);
              },
                child: Text("Criar conta",
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
