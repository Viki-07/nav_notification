import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_count.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
    Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, countProvider, child) => Scaffold(
        appBar: AppBar(title: const Text('Cart screen')),
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  child: const Text('Increase'),
                  onPressed: () {
                    setState(() {
                      countProvider.cart_increment();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                child: const Text('Decrease'),
                onPressed: () {
                  setState(() {
                    countProvider.cart_decrement();
                  });
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}