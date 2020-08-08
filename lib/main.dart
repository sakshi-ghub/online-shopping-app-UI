import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//my own packages
import 'package:shopmart/component/horizontal_list.dart';
import 'package:shopmart/component/products.dart';
import 'package:shopmart/pages/cartpage.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/shirt.jpg'),
          AssetImage('images/jeans.jpg'),
          AssetImage('images/purse.jpg'),
          AssetImage('images/shoes.jpg'),
          AssetImage('images/watch.jpg'),
          AssetImage('images/glasses.JPG'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 100),
        dotSize: 3.5,
       // dotColor: Colors.black,
        indicatorBgPadding: 4.0,
      )
    );
      return Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red,
          title: Text('SmartMart'),
          actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),onPressed: (null),),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new cartpage()));
          },)
    ]
    ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[

              new UserAccountsDrawerHeader(accountName: Text('Sakshi Jha'),
                  accountEmail: Text('sakshijha@gmail.com'),
               currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
              ),
              //body
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new cartpage()));
                  },
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket, color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Categoris'),
                  leading: Icon(Icons.dashboard, color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.red,),
                ),
              ),
              Divider(),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings,color: Colors.blue,),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.green,),
                ),
              ),
            ],
          )
        ),
        body: new ListView(
          children: <Widget>[
            image_carousel,
            new Padding(padding: const EdgeInsets.all(7.5),
            child: new Text('Categories'),),
            // Horizontal list
            HorizontalList(),

            new Padding(padding: const EdgeInsets.all(19.5),
              child: new Text('Recent Products'),),

            //grid view
            Container(
              height: 320.0,
              child: Products(),
            )
          ],
        ),
      );
    }
  }


