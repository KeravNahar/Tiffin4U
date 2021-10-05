import 'package:flutter/material.dart';
import 'package:tiffin4u_project/screens/Food/kichen1.dart';
import 'package:tiffin4u_project/screens/Food/kichen2.dart';
import 'package:tiffin4u_project/screens/Food/kichen3.dart';
import 'package:tiffin4u_project/screens/Food/kichen4.dart';
import 'package:tiffin4u_project/screens/aboutus_page.dart';
import 'package:tiffin4u_project/screens/categories/non_veg.dart';
import 'package:tiffin4u_project/screens/categories/veg.dart';
import 'package:tiffin4u_project/screens/contactus_page.dart';
import 'package:tiffin4u_project/screens/vendords.dart';
import 'package:tiffin4u_project/screens/welcome_page.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tiffin 4 U',
        theme: ThemeData(),
        home: WelcomePage(),
      initialRoute: '/',
      routes: {
       '/cart': (context) => VendorPage(),
         '/about': (context) => AboutUsPage(),
         '/contact': (context) => ContactUsPage(),
        '/welcome': (context) => WelcomePage(),
        '/sanjeev': (context) => Kitchen1Page(),
        '/shilpa': (context) => Kitchen2Page(),
        '/khana': (context) =>Kitchen3Page(),
        '/dil': (context) => Kitchen4Page(),
        '/veg': (context) => VegPage(),
        '/nonveg': (context) => NonVegPage(),
      },
      );
  }
}
