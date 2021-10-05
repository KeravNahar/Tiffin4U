import 'package:flutter/material.dart';

import '../home_page.dart';
class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 250,left: 45,right: 45),
          child: Column(
            children: [
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed accumsan turpis."
                  "Quisque nec porta turpis. In hac habitasse platea dictumst."
                ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.blueGrey),textAlign: TextAlign.center,),
              Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50,left: 35,right: 45),
                  child: RaisedButton(
                    color: Colors.teal[900],
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()),);
                    },
                    child: Text("Confirm Order", style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
