import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        //on android by default its false
        centerTitle: true,
        title: Image.asset("assets/images/logo.png"),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets\icons\search.svg"))
        ],
      ),
    );
  }
}
