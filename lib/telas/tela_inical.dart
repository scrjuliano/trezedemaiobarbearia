import 'package:flutter/material.dart';
import '../tabs/home_tab.dart';
import 'package:trezedemaiobarbearia/widgets/custom_drawer.dart';




class Telainical extends StatelessWidget {
  Telainical({Key? key}) : super(key: key);

  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children:<Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
      ],
    );
  }
}