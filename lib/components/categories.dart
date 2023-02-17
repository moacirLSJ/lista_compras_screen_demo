import 'package:flutter/material.dart';

class CategoriesUI extends StatefulWidget {
  const CategoriesUI({Key? key}) : super(key: key);

  @override
  State<CategoriesUI> createState() => _CategoriesUIState();
}

class _CategoriesUIState extends State<CategoriesUI> {
  final double _imageWidth = 52;
  final double _categoriesGroupHeight = 78;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: _categoriesGroupHeight,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            imageCategories(
              "lib/assets/icons/alface.png",
              text: 'Vegetables',
              color: const Color(0xFFE6F2EA),
            ),
            imageCategories(
              "lib/assets/icons/apple.png",
              text: 'Fruits',
              color: const Color(0xFFFFE9E5),
            ),
            imageCategories(
              "lib/assets/icons/beverage.png",
              text: 'Beverages',
              color: const Color(0xFFFFF6E3),
            ),
            imageCategories(
              "lib/assets/icons/edible_oil.png",
              text: 'Grocery',
              color: const Color(0xFFDCF4F5),
            ),
            imageCategories(
              "lib/assets/icons/grocery.png",
              text: 'Edible oil',
              color: const Color(0xFFF3EFFA),
            ),
            imageCategories(
              "lib/assets/icons/vacuum.png",
              text: 'Household',
              color: const Color(0xFFFFE8F2),
            ),
            imageCategories(
              "lib/assets/icons/medicine.png",
              text: 'Medicine',
              color: const Color(0xFFFFE9E5),
            ),
            imageCategories(
              "lib/assets/icons/apple.png",
              color: const Color(0xFFFFE9E5),
            ),
            imageCategories(
              "lib/assets/icons/apple.png",
              color: const Color(0xFFFFE9E5),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageCategories(String imagePath,
      {required Color color, String text = ''}) {
    return Container(
      margin: const EdgeInsets.only(right: 19),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: _imageWidth,
            width: _imageWidth,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(imagePath, fit: BoxFit.scaleDown,),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 10, color: Color(0xFF868889)),
          )
        ],
      ),
    );
  }
}
