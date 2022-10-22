import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/imagens/')),
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black54,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        );
    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        const CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('13 de Maio'),
                centerTitle: true,
              ),
            ),
            /*( FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance.collection("home").orderBy("pos").get(),
              builder: (context, snapshot){
                if (!snapshot.hasData)
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 200.0,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  );
                else
                  print

              },
            )*/
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 150, top: 600, right: 150, bottom: 10),
          color: Colors.black,
          height: 44.0,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                ('/agenda'),
              );
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.red.shade900)),
            child: const Text(
              "Agende seu horario",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
