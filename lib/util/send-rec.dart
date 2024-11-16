import 'package:flutter/material.dart';

class SendRec extends StatelessWidget {
  const SendRec({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11), // Rounded corners
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30), // Button padding
            ),
            onPressed: () {
              // Handle transfer action
              // For example, navigate to another screen or show a dialog
              print('Transfer clicked');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Transfer  ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.send),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11), // Rounded corners
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30), // Button padding
            ),
            onPressed: () {
              // Handle receive action
              // For example, navigate to another screen or show a dialog
              print('Receive clicked');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Receive  ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.receipt),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
