import 'package:flutter/material.dart';
import 'package:tiffin4u_project/screens/widgets/kitchen.dart';

import '../home_page.dart';

class Kitchen3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidKitchen(
      dishname: 'Stuffed Roles',
      price: "\$150",
      image: 'images/8.jpeg',
      name: "Khana Khazana",
    );
  }
}