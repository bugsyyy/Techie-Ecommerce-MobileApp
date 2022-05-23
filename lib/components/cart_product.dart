import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "RTX 3060 GPU",
      "picture": "images/products/3060.png",
      "price": 23000,
      "quantity": 1,
    },
    {
      "name": "AORUS MOBO",
      "picture": "images/products/aorusmobo.jpg",
      "price": 5500,
      "quantity": 1,
    },
    {
      "name": "i9 PROCESSOR",
      "picture": "images/products/inteli9 processor.jpg",
      "price": 30000,
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
              cart_product_name: Products_on_the_cart[index]["name"],
              cart_prod_pitcure: Products_on_the_cart[index]["picture"],
              cart_prod_quantity: Products_on_the_cart[index]["quantity"],
              cart_prod_price: Products_on_the_cart[index]["price"]);
        });
  }
}

class Single_cart_product extends StatelessWidget {
  const Single_cart_product(
      {Key? key,
      required this.cart_product_name,
      required this.cart_prod_pitcure,
      required this.cart_prod_quantity,
      required this.cart_prod_price})
      : super(key: key);

  final cart_product_name;
  final cart_prod_pitcure;
  final cart_prod_quantity;
  final cart_prod_price;

  Single_cart_productt({
    Key? key,
    required dynamic cart_product_name,
    required dynamic cart_prod_pitcure,
    required dynamic cart_prod_quantity,
    required dynamic cart_prod_price,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //=================== LEADING SECTION ==================
        leading: Image.asset(cart_prod_pitcure, width: 120.0, height: 150.0),

        //================== TITLE SECTION =======================
        title: Text(cart_product_name),

        //================== SUBTITLE QUESTION ====================
        subtitle: Column(
          children: <Widget>[
            //ROW INSIDE THE COLUMN
            Row(
              children: <Widget>[
                // ================== SECTION FOR QUANTITY ===================
                Padding(
                  padding: const EdgeInsets.fromLTRB(1.0, 4.0, 4.0, 4.0),
                  child: Text(
                    "Quantity:",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    "\ ${cart_prod_quantity}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.orange.shade800),
                  ),
                ),
              ],
            ),

            // ====================== SECTION FOR PRICE ====================
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\P${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            Expanded(
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_up)),
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
            ),
          ],
        ),
      ),
    );
  }
}
