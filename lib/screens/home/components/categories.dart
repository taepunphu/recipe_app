import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';

//Our Category List nedd StateFullWidget

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All",
    "Indian",
    "Italian",
    "Thailand",
    "Singapore"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategoryItem(index)),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize * 0.5),
        decoration: BoxDecoration(
          color: Color(0xFFEFF3EE),
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 1.6),
        ),
        child: Text(
          categories[index],
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color:
                  selectedIndex == index ? kPrimaryColor : Color(0xFFC2C2B5)),
        ),
      ),
    );
  }
}
