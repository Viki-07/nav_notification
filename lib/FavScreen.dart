import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_count.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, countProvider, child) => Scaffold(
        appBar: AppBar(title: const Text('Favourites screen')),
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
                          countProvider.fav_increment();
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
                        countProvider.fav_decrement();
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
