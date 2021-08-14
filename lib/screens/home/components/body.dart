import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(),
      ],
    );
  }
}

class RecipeBundleCard extends StatelessWidget {
  const RecipeBundleCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.65,
    );
  }
}
