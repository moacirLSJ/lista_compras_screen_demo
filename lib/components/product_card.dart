import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.name,
    required this.imgPath,
    required this.price,
  })
      : super(key: key);
  final String name;
  final String imgPath;
  final double price;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 181,
      height: 234,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          cardBody(),
        ],
      ),
    );
  }

  Widget cardBody() {
    return Container(
      color: Colors.white,
      child: Column(children: [
        Container(
          alignment: Alignment.topRight,
          child: const Icon(Icons.favorite_outline),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Image.asset(
            // 'lib/assets/icons/icon_good/lemon.png',
            widget.imgPath,
            width: 91,
          ),
        ),
        textCard("\$${widget.price}", color: const Color(0xFF6CC51D)),
        // textCard("Fresh Lemon", fw: FontWeight.w600, size: 15),
        textCard(widget.name, fw: FontWeight.w600, size: 15),
        textCard("1kg", fw: FontWeight.w500, color: const Color(0xFF868889)),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: const Divider(
            color: Color(0xFFEBEBEB),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 1, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                size: 15,
              ),
              textCard("Add to cart", fw: FontWeight.w500, size: 12)
            ],
          ),
        ),
      ]),
    );
  }

  Container textCard(
    String text, {
    FontWeight fw = FontWeight.w500,
    double size = 12,
    Color color = Colors.black,
  }) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          // color: Color(0xFF6CC51D),
          color: color,
          fontWeight: fw,
          fontSize: size,
        ),
      ),
    );
  }
}
