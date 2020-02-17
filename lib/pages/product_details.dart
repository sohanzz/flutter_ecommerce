import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        backgroundColor: Colors.red,
        centerTitle: false,
        title: Text('Shop App'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //======== The first button ========//

          Row(
            children: <Widget>[
              // ======= The size Button========//
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Colors"),
                            content: Text("Choose the color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //======= The second button======//

          Row(
            children: <Widget>[
              // ======= The size Button========//

              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")),
              ),

              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          ),

          Divider(),
          new ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book."),
          ),
          Divider(),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              //==========PRODUCT BRAND=======//
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              ),
            ],
          ),

          // Add the condition
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Product condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("New"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
