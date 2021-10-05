import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import 'confirmation_page.dart';
class WidKitchen extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String dishname;
  WidKitchen({required this.image, required this.name, required this.price, required this.dishname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text(name, style:TextStyle(fontSize: 20, color: Colors.teal[900]) ,),
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded,color: Colors.teal[900],),onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        height: 600,
        width: 350,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0,top: 20.0, right: 200),
              child: Text("Today's Menu", style: TextStyle(
                  color: Colors.teal[800],fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius:85,
                  backgroundImage: AssetImage(image),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: ListTile(
                    leading:Text(dishname, style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                    trailing: Text(price,style: TextStyle(fontSize: 20,color: Colors.teal[900],fontWeight: FontWeight.bold),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Container(
                    height: 60,
                    width : 200,
                    child: RaisedButton(
                      color: Colors.teal[900],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerificationPage()),
                        );
                      },
                      child: Text("Checkout", style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
                  child: Text("Lorem ipsum dolor sit amet, consectetur"
                      " adipiscing elit. In sed accumsan turpis."
                      "Quisque nec porta turpis. In hac habitasse platea dictumst."
                      "Curabitur egestas id risus vel euismod. Quisque dignissim faucibus mollis."
                      ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
