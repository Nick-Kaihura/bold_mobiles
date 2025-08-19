import 'package:flutter/material.dart';

class MessageImageBubble extends StatelessWidget {
  final String imageUrl;

  const MessageImageBubble({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        //  discuss with John, on open image with gallery or in a big screen
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl, // Replace with network image
            height: 150,
            fit: BoxFit.cover,
          )),
    ));
  }
}
