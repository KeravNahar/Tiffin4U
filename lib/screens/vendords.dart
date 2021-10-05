import 'package:flutter/material.dart';

import 'home_page.dart';
class VendorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget vendors({required String name,required String image,required String price, required String navpath}){
      return FlatButton(
        onPressed: (){
          Navigator.pushNamed(context, navpath);
        },
        child: Container(
          margin: EdgeInsets.only(left: 20),
          height: 400,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius:85,
                backgroundImage: AssetImage(image),
              ),
              ListTile(
                leading:Text(name, style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                trailing: Text(price,style: TextStyle(fontSize: 20,color: Colors.teal[900],fontWeight: FontWeight.bold),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star_border,color: Colors.yellow,)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Text("Lorem ipsum dolor sit amet, consectetur"
                    " adipiscing elit. In sed accumsan turpis.",style: TextStyle(),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text('Vendors', style:TextStyle(fontSize: 20, color: Colors.teal[900]) ,),
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded,color: Colors.teal[900],),onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.only(right: 225),
                    child: Text("All Available Vendors",style: TextStyle(fontSize: 15,color: Colors.teal[900],fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        vendors(name: "Sanjeev's Kitchen", image: 'images/2.jpeg', price: "\$125",navpath: '/sanjeev'),
                        vendors(name: "Shilpa's Kitchen", image: 'images/7.jpeg', price: "\$105",navpath: '/shilpa'),
                        vendors(name: "Khana Khazana", image: 'images/8.jpeg', price: "\$150",navpath: '/khana'),
                        vendors(name: "Dil Mange More", image: 'images/9.jpeg', price: "\$250",navpath: '/dil'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
