import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "120",
      "price": "85"
    },

    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": "90",
      "price": "75",
    },

    {
      "name": "Shoe",
      "picture": "images/products/hills1.jpeg",
      "old_price": "110",
      "price": "80",
    },

    {
      "name": "Pant",
      "picture": "images/products/pants2.jpeg",
      "old_price": "445",
      "price": "225",
    },
    {
      "name": "Skirt",
      "picture": "images/products/sk1.jpeg",
      "old_price": "567",
      "price": "567",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              //Here we re passing the values of the product to the product details page
                builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row (
                  children: <Widget>[
                    Expanded(
                      child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
