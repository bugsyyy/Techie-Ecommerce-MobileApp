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
      "picture": "images/products/3060gpu.jpg",
      "old_price": 23500,
      "price": 23000,
    },
    {
      "name": "ASUS MOBO",
      "picture": "images/products/asus mobo.png",
      "old_price": 6000,
      "price": 5500,
    },
    {
      "name": "ASUS MOBO",
      "picture": "images/products/asus mobo.png",
      "old_price": 6000,
      "price": 5500,
    },
    {
      "name": "ASUS MOBO",
      "picture": "images/products/asus mobo.png",
      "old_price": 6000,
      "price": 5500,
    },
    {
      "name": "ASUS MOBO",
      "picture": "images/products/asus mobo.png",
      "old_price": 6000,
      "price": 5500,
    },
    {
      "name": "ASUS MOBO",
      "picture": "images/products/asus mobo.png",
      "old_price": 6000,
      "price": 5500,
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
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                    title: Text(
                      "\P$prod_price",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                    subtitle: Text(
                      "\P$prod_old_price",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                          fontSize: 12.0,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
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
