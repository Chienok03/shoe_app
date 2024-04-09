import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/cartitem.dart';
import '../model/cart.dart';
import '../model/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //heading
          Text(
            "My Cart",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(height: 10),
          Expanded(child: ListView.builder(itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
              Shoe individualShoe = value.getUserCart()[index];

              //return the cart item
              return CartItem(shoe: individualShoe,);
            },
          ))
        ],
      ),
    );
  }
}
