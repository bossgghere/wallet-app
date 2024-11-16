import 'dart:ui';

import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 380,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  // color: Colors.black.withOpacity(0.1),
                  // blurRadius: 10,
                  offset: Offset(0, 4))
            ] // Slightly lighter amber
            ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left section: Icon + Text (Snapchat Premium)
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.snapchat_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to the left
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Snapchat Premium',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('1 Dec',
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                '-\$180',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Red color to indicate negative amount
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
