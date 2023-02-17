import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:lista_comras/components/search_bar.dart';

import '../components/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            height: 283,
            width: 380,
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
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
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
              child: const CategoriesUI())

          // const SearchBarHome(),
        ],
      ),
    ));
  }
}
