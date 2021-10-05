import 'package:flutter/material.dart';
import 'package:tiffin4u_project/screens/widgets/kitchen.dart';

import '../home_page.dart';

class Kitchen1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidKitchen(
      dishname: 'Special Rajasthani Thali',
      price: "\$125",
      image: 'images/2.jpeg',
      name: "Sanjeev's Kitchen",
    );
  }
}