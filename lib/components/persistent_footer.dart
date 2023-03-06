
import 'package:flutter/material.dart';

List<Widget> persistentFooterButtons(BuildContext context){
  return [Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.home_outlined, size: 32),
        Icon(Icons.account_circle_outlined, size: 32,),
        Icon(Icons.favorite_outline, size: 32,),
        SizedBox(width: MediaQuery.of(context).size.width*.15,),
      ])];
}