import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent[200],
        appBar: AppBar(
          title: const Text('My First App'),
          backgroundColor: Colors.greenAccent[100],
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), // ⬅️ round the edges
              boxShadow: [
                // ⬅️ soft shadow
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 12,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            clipBehavior: Clip.hardEdge, // ⬅️ clip child to radius
            child: Image.asset(
              'images/valorant-review-in-progress_azwy.jpg',
              fit: BoxFit.cover, // fills the frame nicely
            ),
          ),
        ),
      ),
    ),
  );
}
