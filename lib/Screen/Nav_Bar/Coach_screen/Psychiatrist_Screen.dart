import 'package:flutter/material.dart';

class PsychiatristScreen extends StatefulWidget {
  const PsychiatristScreen({super.key});

  @override
  State<PsychiatristScreen> createState() => _PsychiatristScreenState();
}

class _PsychiatristScreenState extends State<PsychiatristScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("psy"),
      ),
    );
  }
}
