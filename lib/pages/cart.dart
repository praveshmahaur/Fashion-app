import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Product> cartItems = [
    Product(name: "Product 1", price: 20.0, imageUrl: "assets/images/shirt1.jpg"),
    Product(name: "Product 2", price: 40.0, imageUrl: "assets/images/shirt2.jpg"),
    Product(name: "Product 3", price: 50.0, imageUrl: "assets/images/shirt2.jpg"),
    Product(name: "Product 4", price: 60.0, imageUrl: "assets/images/jewelry.jpg"),
    Product(name: "Product 5", price: 30.0, imageUrl: "assets/images/blazers.jpg"),
    Product(name: "Product 1", price: 20.0, imageUrl: "assets/images/shirt1.jpg"),
    Product(name: "Product 2", price: 40.0, imageUrl: "assets/images/shirt2.jpg"),
    Product(name: "Product 3", price: 50.0, imageUrl: "assets/images/shirt2.jpg"),
    Product(name: "Product 4", price: 60.0, imageUrl: "assets/images/jewelry.jpg"),
    Product(name: "Product 5", price: 30.0, imageUrl: "assets/images/blazers.jpg"),
    // Add more initial products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int index = 0; index < cartItems.length; index++)
              CartItemWidget(product: cartItems[index], onRemove: () => removeFromCart(index)),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: \$${calculateTotal().toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement the logic for checkout
                  // For example, you can navigate to a checkout page
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage()));
                },
                child: Text("Checkout"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void removeFromCart(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  double calculateTotal() {
    double total = 0.0;
    for (Product item in cartItems) {
      total += item.price;
    }
    return total;
  }
}

class CartItemWidget extends StatelessWidget {
  final Product product;
  final VoidCallback onRemove;

  const CartItemWidget({Key? key, required this.product, required this.onRemove}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        child: ListTile(
          leading: Image.asset(
            product.imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          title: Text(product.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('\$${product.price.toStringAsFixed(2)}'),
              SizedBox(height: 8),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      // Implement logic to decrease quantity
                    },
                  ),
                  Text('1'), // Display quantity (you can replace it with dynamic quantity)
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      // Implement logic to increase quantity
                    },
                  ),
                ],
              ),
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle),
            onPressed: onRemove,
          ),
        ),
      ),
    );
  }
}