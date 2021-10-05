import 'package:flutter/material.dart';
import 'package:tiffin4u_project/screens/widgets/kitchen.dart';

import '../home_page.dart';

class Kitchen2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidKitchen(
      dishname: 'Chole Bhature',
      price: "\$105",
      image: 'images/7.jpeg',
      name: "Shilpa's Kitchen",
    );
  }
}