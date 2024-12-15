import 'package:flutter/material.dart';

class SnackbarView extends StatefulWidget {
  const SnackbarView({super.key});

  @override
  State<SnackbarView> createState() => _SnackbarViewState();
}

class _SnackbarViewState extends State<SnackbarView> {
  showButton1() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("This is Button 1"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  showButton2() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("This is Button 2"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => showButton1(),
              child: const Text("Button 1"),
            ),
            ElevatedButton(
              onPressed: () => showButton2(),
              child: const Text("Button 2"),
            ),
          ],
        ),
      ),
    );
  }
}
