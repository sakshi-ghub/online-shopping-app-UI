import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;
  final product_details_brand;
  final product_details_details;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture,
    this.product_details_brand,
    this.product_details_details,
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red,
          title: Text('SmartMart'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,),
              onPressed: () {},
            ),

            new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,),
              onPressed: () {},
            ),
          ]
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(widget.product_details_name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\u{20B9}${widget.product_details_old_price}",
                          style: TextStyle(color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),

                      Expanded(
                        child: new Text(
                          "\u{20B9}${widget.product_details_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //===first button ===

          Row(
            children: <Widget>[

              //the size button
              Expanded(
                child: MaterialButton(onPressed: () {
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the Size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            ),
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size"),),
                      Expanded(child: new Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(onPressed: () {
                  showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Color"),
                      content: Text("choose the size"),

                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("close"),
                        ),
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color"),),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(onPressed: () {showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Quantity"),
                        content: Text("Quantity you need"),

                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("close"),
                          ),
                        ],
                      );
                    });},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty"),),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),
                ),
              ),


            ],
          ),

          Row(
            children: <Widget>[

              //the size button
              Expanded(
                child: MaterialButton(onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now"),
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text(widget.product_details_details),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product Brand', style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_details_brand),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text('Product Name', style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_name),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text('Product condition', style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),),
            ],
          ),

          //divider
          Divider(),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child:new Text("Similar Products")
          ),
        //SIMILAR PRODUCTS SECTION
          Container(
            height: 360.0,
            child: Similar_products(),
          ),


        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products>{
  var product_list = [
    {
      "name": "Salwar",
      "picture": "images/product/salwar.jpg",
      "old_price": 2899,
      "price": 1860,
      "brand": "Kiki",
      "details": "Color:    Red"
          "Pattern:    Solid"
          "Fabric:    Cotton Blend"
          "We are manufacturers of women ethnic wear, we use best cotton fabric for our patiala salwar. We deals in all kinds of bottom wear and this cotton patiala salwar made up of fine cotton fabric and free in size, can be used for S, M, L sizes. Must try."

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
          return Similar_Single_prod(
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

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_brand;
  final prod_details;

  Similar_Single_prod ({
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