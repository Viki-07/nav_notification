import 'package:flutter/material.dart';
import 'package:nav_notification/provider_count.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, countProvider, child) => Scaffold(
        appBar: AppBar(title: const Text('Notification screen')),
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
                      countProvider.notif_increment();
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
                    countProvider.notif_decrement();
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
