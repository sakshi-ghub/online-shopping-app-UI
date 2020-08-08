import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/horizontal/shirt1.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/horizontal/jacket.png',
            image_caption: 'Jacket',
          ),

          Category(
            image_location: 'images/horizontal/pentt.png',
            image_caption: 'Jeans',
          ),

          Category(
            image_location: 'images/horizontal/sun.png',
            image_caption: 'Sun Glass',
          ),

          Category(
            image_location: 'images/horizontal/shoess.webp',
            image_caption: 'Shoes',
          ),

          Category(
            image_location: 'images/horizontal/watchh.png',
            image_caption: 'Watch',
          ),
        ],
    )
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
});
  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
      child: Container(
        width: 100.0,
      child: ListTile(
      title: Image.asset(image_location,
      width: 100.0,
      height: 60.0,),
      subtitle: Container(
        alignment: Alignment.topCenter,
        child: Text(image_caption),)
    ),),
    ),
    );
  }
}