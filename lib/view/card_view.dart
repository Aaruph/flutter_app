import 'package:flutter/material.dart';
// import 'package:motion_toast/motion_toast.dart';

Widget displayCard(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      // MotionToast.success(description: Text("$title is clicked")).show(context);
    },
    child: SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        elevation: 5,
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            for (int i = 1; i <= 10; i++)
              displayCard(context, "I am inside card $i"),
          ],
        ),
      ),
    );
  }
}