import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:lista_comras/components/search_bar.dart';

import '../components/categories.dart';

import '../components/persistent_footer.dart';
import '../components/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      persistentFooterButtons: persistentFooterButtons(context),
      floatingActionButton: FloatingActionButton(

        onPressed: ()=>{},
        child:  const ImageIcon(AssetImage('lib/assets/icons/bag.png'),color: Colors.white),
        backgroundColor: const Color(0xFF6CC51D),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(color: Color(0xFFF9F9FC)),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 80,
              // child: const Expanded(child: SearchBarHome()),
              child: const SearchBarHome(),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .30,
              child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    // return Image.network(
                    //   "https://via.placeholder.com/50x50",
                    //   fit: BoxFit.contain,
                    // );
                    //
                    return Image.asset(
                      "lib/assets/images/list-handmade.jpg",
                      fit: BoxFit.cover,
                    );
                    // return Container(child: Image.network("https://picsum.photos/250?image=9", fit: BoxFit.cover,));
                  },
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                  itemCount: 3),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.only(top: 26),
              child: Row(
                children: [
                  Container(
                    child: const Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Expanded(child: Container()),
                  const Icon(Icons.arrow_forward_ios, size: 18)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 22),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: const CategoriesUI(),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Featured products",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: SizedBox(
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 15,
                        children: const [
                          ProductCard(
                            name: "Fresh Lemon",
                            imgPath: 'lib/assets/icons/icon_good/lemon.png',
                            price: 8.0,
                          ),
                          ProductCard(
                            name: "Fresh Avocado",
                            imgPath: 'lib/assets/icons/icon_good/avocado.png',
                            price: 7.00,
                          ),
                          ProductCard(
                            name: "Fresh Grapes",
                            imgPath: 'lib/assets/icons/icon_good/grapes.png',
                            price: 9.90,
                          ),
                          ProductCard(
                            name: "Fresh Pineapple",
                            imgPath: 'lib/assets/icons/icon_good/pineapple.png',
                            price: 7.75,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
