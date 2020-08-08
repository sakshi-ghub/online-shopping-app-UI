import 'package:flutter/material.dart';
import 'package:shopmart/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}
//product detail
class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Fan",
      "picture": "images/product/usha.jpg",
      "old_price": 2899,
      "price": 1860,
      "brand": "USHA",
      "details": "Color:    White"
         "Strong motor, hi air throw"
          "Heavy base, inbuit- timer, aerodynamic pp blade"
           " Thermal overload protection"
             "Additional timer for convenience"
            " Strong performance like a pro with glossy finish"
           " Warranty: 2 Years Warranty"
           "Includes: Complete Fan"
    },
    {
      "name": "Black Kurta",
      "picture": "images/product/kurta.jpg",
      "old_price": 2459,
      "price": 1970,
      "brand": "Pepe",
      "details": "Color:    Black"
          "Fabric:    Cotton Blend"
          "Package Include:- 1 Piece of Long kurta Product Description :- ad & av presenting here the latest designer Long kurta perfectly for ethnic, casual as well as party wear. These are designed to absolute perfection, this designer kurta on DARK BLUE colour looks very trendy to show & that too keeps you at easy whenever you wear this. This have exclusive designes that gives you a royal & charming look. It immediately grabs the attention of the people around you and makes you look attractive and elegant. This Long kurta is very light in weight. This is the only wear which can easily be paired with any jeans or pajama or dhoti and that too on any occassion Basic Features :- Design:- Solid / Plain Sleeves:- Long Sleeves Neck:- Mandarin Collar Neck Length:- Long kurta (41 inches) Fitting:- Regular Fit Disclaimer :- Product color may slightly vary due to photographic lighting sources or your monitor settings."
    },
    {
      "name": "Golden Watch",
      "picture": "images/product/gwatch.jpg",
      "old_price": 799,
      "price": 590,
      "brand": "Titan",
      "details": "Color:    Golden"
          "Details:ORIGINAL GOLD PLATED DIAL DAY & DATE FUNCTIONING, DAY & DATE, DAY DISPLAY, ORIGINAL GOLD PLATED DAY & DATE FUNCTIONING, DATE DISPLAY, GOLDEN DIAL DAY & DATE FUNCTIONING WATCH, DAY & DATE WATCHES FOR MENS, GOLD PLATED WATCHES, DAY & DATE FUNCTIONING, DAY & DATE & TIME, GOLD PLATED DAY & DATE FUNCTIONING, ORIGINAL GOLD PLATED WATCH, ROUND WATCHES IN WRIST WATCHES IN GOLDEN WATCH, DAY & DATE WATCHES FOR BOYS"
    },
    {
      "name": "Blue jeans",
      "picture": "images/product/ajeans.jpg",
      "old_price": 1899,
      "price": 1779,
      "brand": "Levi's",
      "details": "colour: Blue",
    },

    {
      "name": "Sun Glass",
      "picture": "images/product/glas.JPG",
      "old_price": 1899,
      "price": 1779,
      "brand": "Micron",
      "details": "colour: Blue",
    },

    {
      "name": "Sparx Shoes",
      "picture": "images/product/sparx.jpg",
      "old_price": 999,
      "price": 699,
      "brand": "Sparx",
      "details": "colour: Blue",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
    itemBuilder: (BuildContext context, int index){
          return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
            prod_brand: product_list[index]['brand'],
            prod_details: product_list[index]['details'],
           );
        });
    }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_brand;
  final prod_details;

  Single_prod ({
  this.prod_name,
  this.prod_picture,
  this.prod_old_price,
  this.prod_price,
    this.prod_brand,
    this.prod_details,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
             // passing value product to product detail

                builder: (context) => new ProductDetails(
                product_details_name: prod_name,
                product_details_new_price: prod_price,
                product_details_old_price: prod_old_price,
                product_details_picture: prod_picture,
                  product_details_brand: prod_brand,
                  product_details_details: prod_details,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
                  title: Text("\u{20B9}$prod_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
                subtitle: Text("\u{20B9}$prod_old_price", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w800,
                decoration: TextDecoration.lineThrough),
                ),
              ),
                ),
              child: Image.asset(prod_picture,
                fit: BoxFit.cover,),
              ),
            ),
          ),
        ),

    );


  }
}
