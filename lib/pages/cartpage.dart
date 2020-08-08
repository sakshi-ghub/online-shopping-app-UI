import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  @override
_State createState() => _State();
}
class _State extends State<cartpage> {
@override
Widget build(BuildContext context) {
return Scaffold(
   appBar: new AppBar(
    elevation: 0.0,
    backgroundColor: Colors.red,
    title: Text('Cart'),
    actions: <Widget>[
      new IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,),
        onPressed: () {},
      ),
    ]
),
bottomNavigationBar: new Container(
  color: Colors.white,
  child: Row(
    children: <Widget>[
      Expanded(child: ListTile(
      title: new Text("Total:"),
  subtitle: new Text("\u{20B9}2800"),
  )),
      Expanded(
        child: new MaterialButton(onPressed: (){},
        child: new Text("Check out", style: TextStyle(color: Colors.white),),
        color: Colors.red,),),

  ],
  ),
),
);
}
}