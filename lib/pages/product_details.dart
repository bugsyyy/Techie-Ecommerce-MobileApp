import 'package:flutter/material.dart';
import 'package:techie/main.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails(
      {Key? key,
      required this.product_detail_name,
      required this.product_detail_picture,
      required this.product_detail_oldprice,
      required this.product_detail_newprice})
      : super(key: key);

  final product_detail_name;
  final product_detail_newprice;
  final product_detail_oldprice;
  final product_detail_picture;

  ProdDetails({
    Key? key,
    required dynamic product_detail_name,
    required dynamic product_detail_picture,
    required dynamic product_detail_oldprice,
    required dynamic product_detail_newprice,
  }) {}

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black87,
        title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Techie')),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset((widget.product_detail_picture)),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\P${widget.product_detail_oldprice}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text("\P${widget.product_detail_newprice}",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //================  THE FIRST BUTTON ===============
          Row(
            children: <Widget>[
              // ========= THE QTY BUTTON ========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose the quantity"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "close",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Quantity")),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              // ========= THE BUY BUTTON ========
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy now")),
              ),

              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart, color: Colors.black87)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )),
            ],
          ),

          Divider(),

          ListTile(
            title: Text(
              "Product details",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "The GeForce RTX 3060 is a performance-segment graphics card by NVIDIA, launched on January 12th, 2021. Built on the 8 nm process, and based on the GA106 graphics processor, in its GA106-300-A1 variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on GeForce RTX 3060. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games.",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product brand:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              // REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product condition:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              // REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand new"),
              ),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(7.0),
          ),
          Text(
            "Similar products",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),

          // SIMILAR PRODUCTS SECTION
          Container(
            height: 360,
            child: Similarproducts(),
          ),
        ],
      ),
    );
  }
}

class Similarproducts extends StatefulWidget {
  const Similarproducts({Key? key}) : super(key: key);

  @override
  State<Similarproducts> createState() => _SimilarproductsState();
}

class _SimilarproductsState extends State<Similarproducts> {
  var product_list = [
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
          return Similar_single_prod(
            product_name: product_list[index]['name'],
            prod_pitcure: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  const Similar_single_prod(
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
