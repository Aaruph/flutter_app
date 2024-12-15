import 'package:flutter/material.dart';

showmysnackbar({
  required BuildContext context,
  required String messeage,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(messeage),
        backgroundColor: color ?? Colors.green,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 1)),
  );
}