import 'package:flutter/material.dart';
import 'package:products/screens/Login.dart';
import 'package:products/screens/User_Cart.dart';
import 'package:products/screens/productsContainer.dart';
import 'package:products/screens/user_cart_2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UserCart2(),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              icon: const Icon(Icons.person_outlined))
        ],
      ),
      body: const Column(
        children: [
          // Categaries(),
          Expanded(
            child: Productcontainer(),
          ),
        ],
      ),
    );
  }
}
