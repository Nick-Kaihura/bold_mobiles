import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen(TabController controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage:
                  AssetImage("assets/emily.jpg"), // Replace with network image
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Emily",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Text("• Online",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(Icons.call, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.videocam, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Incoming message
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Hey you 👋 I couldn’t help but notice your smile — it’s contagious",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),

          // Sent message
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Haha thank you. I love that you’re into travel — what’s your dream destination?",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),

          // Incoming message
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Oooh, tough one! But I’d say Greece. I just want to dance in Santorini under the stars 😍 What about you?",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),

          // Incoming message with image
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Took this one myself when I went to the coast last year. It’s giving major Greek island vibes, right?",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/beach.jpg", // Replace with network image
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          // Sent voice message
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.play_arrow, color: Colors.white),
                  SizedBox(width: 10),
                  Icon(Icons.graphic_eq, color: Colors.white),
                ],
              ),
            ),
          ),

          // Incoming voice message
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.play_arrow, color: Colors.deepOrange),
                  SizedBox(width: 10),
                  Icon(Icons.graphic_eq, color: Colors.deepOrange),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
