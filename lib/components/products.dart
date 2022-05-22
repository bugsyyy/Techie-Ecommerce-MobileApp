import 'package:flutter/material.dart';

import 'package:techie/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "RTX 3060 GPU",
      "picture": "images/products/3060.png",
      "old_price": 23500,
      "price": 23000,
    },
    {
      "name": "AORUS MOBO",
      "picture": "images/products/aorusmobo.jpg",
      "old_price": 6000,
      "price": 5500,
    },
    {
      "name": "i9 PROCESSOR",
      "picture": "images/products/inteli9 processor.jpg",
      "old_price": 32000,
      "price": 30000,
    },
    {
      "name": "WD - 2TB SSD",
      "picture": "images/products/ssd.jpg",
      "old_price": 21800,
      "price": 21000,
    },
    {
      "name": "GSKILL RAM",
      "picture": "images/products/gskill ram.jpg",
      "old_price": 5700,
      "price": 5300,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            prod_pitcure: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  const Single_prod(
      {Key? key,
      required this.product_name,
      required this.prod_pitcure,
      required this.prod_old_price,
      required this.prod_price})
      : super(key: key);

  final product_name;
  final prod_pitcure;
  final prod_old_price;
  final prod_price;

  Single_product({
    Key? key,
    required dynamic product_name,
    required dynamic prod_pitcure,
    required dynamic prod_old_price,
    required dynamic prod_price,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                //here we are passing the values of the product to the product details page
                builder: (context) => ProductDetails(
                    product_detail_name: product_name,
                    product_detail_picture: prod_pitcure,
                    product_detail_oldprice: prod_old_price,
                    product_detail_newprice: prod_price))),
            child: GridTile(
                footer: Container(
                    height: 30,
                    color: Colors.white60,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            product_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                        Text(
                          "\P${prod_price}",
                          style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                child: Image.asset(
                  prod_pitcure,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
