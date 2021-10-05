import 'package:flutter/material.dart';

import 'home_page.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text('About Us', style:TextStyle(fontSize: 20, color: Colors.teal[900]) ,),
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded,color: Colors.teal[900],),onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 35,left: 45,right: 45),
          child: Column(
            children: [
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed accumsan turpis."
                  "Quisque nec porta turpis. In hac habitasse platea dictumst."
                  "Curabitur egestas id risus vel euismod. Quisque dignissim faucibus mollis."
                  "Lorem ipsum dolor sit amet, consectetur"
                  " adipiscing elit. In sed accumsan turpis."
                  "Quisque nec porta turpis. In hac habitasse platea dictumst."
                  "Curabitur egestas id risus vel euismod. Quisque dignissim faucibus mollis."
                ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.blueGrey),textAlign: TextAlign.center,),
           Padding(
             padding: const EdgeInsets.only(top: 35,left: 35,right: 45),
             child: Text("Version 1.2.0",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
           )

            ],
          ),
        ),
      ),
    );
  }
}
