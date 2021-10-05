import 'package:flutter/material.dart';
import 'package:tiffin4u_project/screens/widgets/kitchen.dart';

import '../home_page.dart';

class Kitchen4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidKitchen(
      dishname: 'Chicken Momos',
      price: "\$250",
      image: 'images/9.jpeg',
      name: "Dil Mange More",
    );
  }
}