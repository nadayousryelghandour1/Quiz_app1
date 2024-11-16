import 'package:flutter/material.dart';

Widget myElevatedButton({required String text, required onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      fixedSize: const Size(180, 30),
      backgroundColor: Colors.deepPurple[900],
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 15.0,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
