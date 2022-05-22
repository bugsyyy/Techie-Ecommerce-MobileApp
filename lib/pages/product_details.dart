import 'package:flutter/material.dart';

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
        title: Text('Techie'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
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
                  icon: Icon(Icons.shopping_cart, color: Colors.blue)),
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
            title: Text("Product details:"),
            subtitle: Text(
                "The GeForce RTX 3060 is a performance-segment graphics card by NVIDIA, launched on January 12th, 2021. Built on the 8 nm process, and based on the GA106 graphics processor, in its GA106-300-A1 variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on GeForce RTX 3060. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games."),
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
        ],
      ),
    );
  }
}
