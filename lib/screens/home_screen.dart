import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
         actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.teal,),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Notification icon pressed')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}