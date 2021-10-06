import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin4u_project/screens/vendords.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget categories({required String image,required String txt , required String navpath}){
    return FlatButton(
      onPressed: (){
        Navigator.pushNamed(context, navpath);
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 85,
            width: 85,
            child: CircleAvatar(
              radius: 100,
                backgroundImage:AssetImage(image),
            ),
          ),
          SizedBox(height: 10,),
          Text(
              txt,
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blueGrey),
          )
        ],
      ),
    );
  }

  Widget adds({required double height, required double width, required String image}){
    return Container(
      margin: EdgeInsets.only(left: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),fit:BoxFit.fill),
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }

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
  Widget draweritem({required String name, required IconData icon, required String navpath}){
    return ListTile(
      leading: Icon(icon,color: Colors.teal[900],),
      title: Text(name,style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
      onTap: (){
        Navigator.pushNamed(context, navpath);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white12,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                    accountName: Text("AccountName",style: TextStyle(color: Colors.blueGrey),),
                    accountEmail: Text("accountEmail@gmail.com",style: TextStyle(color: Colors.blueGrey),),
                ),
                draweritem(name: "Vendors", icon: Icons.shopping_cart, navpath: "/cart"),
                draweritem(name: "About Us", icon: Icons.question_answer, navpath:"/about"),
                draweritem(name: "Feedback", icon: Icons.feedback, navpath:"/contact"),
                SizedBox(height: 280,),
                draweritem(name: "Log Out", icon: Icons.logout, navpath: '/welcome'),
                Divider(
                  thickness: 2,
                  color: Colors.teal[900],
                ),
                Padding(padding: const EdgeInsets.only(left:80),
                 child: Text("Version 1.2.0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.teal[800]),),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal[900]),
        elevation: 0.0,
          backgroundColor: Colors.white12,
          actions:[
                FlatButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VendorPage()),
                      );
                    },
                    child: Icon(Icons.shopping_cart,color: Colors.teal[900],)),
          ]
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    prefixIcon: Icon(Icons.search, color: Colors.blueGrey,),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.teal.shade900)
                    )
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Categories",style: TextStyle(fontSize: 15,color: Colors.teal[900],fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 45.0),
                    child: Row(
                        children: [
                          categories(image: 'images/5.jpeg',txt: "Veg", navpath: '/veg'),
                          categories(image: 'images/10.jpeg',txt: "Non-Veg" , navpath: '/nonveg'),
                        ],
                      ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    adds(height: 150, width: 500, image: 'images/add2.jpeg'),
                    SizedBox(height: 5,),
                  ],
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Vendors Near You",style: TextStyle(fontSize: 15,color: Colors.teal[900],fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  ),
                  SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
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
