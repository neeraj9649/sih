import 'package:flutter/material.dart';

class YourCoachScreen extends StatefulWidget {
  const YourCoachScreen({super.key});

  @override
  State<YourCoachScreen> createState() => _YourCoachScreenState();
}

class _YourCoachScreenState extends State<YourCoachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('your coach'),
      ),
    );
  }
}
