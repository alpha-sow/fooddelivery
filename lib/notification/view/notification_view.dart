import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notification'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: ListView(
                children: [],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: ListView(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
