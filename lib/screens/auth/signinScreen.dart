import 'package:flutter/material.dart';

class SginInScreen extends StatefulWidget {
  const SginInScreen({super.key});

  @override
  State<SginInScreen> createState() => _SginInScreenState();
}

class _SginInScreenState extends State<SginInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign In Screen'),
          ],
        )
      ),
    );
  }
}