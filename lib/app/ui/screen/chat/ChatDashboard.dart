import 'package:flutter/material.dart';

class ChatDashboard extends StatelessWidget {
  const ChatDashboard(TabController controller, {super.key});

  final List<Map<String, dynamic>> matches = const [
    {
      "name": "Joan",
      "message": "Hi there!",
      "time": "19:21",
      "avatar": "https://via.placeholder.com/150",
      "status": "read"
    },
    {
      "name": "Sarah",
      "message": "So what are your hobbies?",
      "time": "19:21",
      "avatar": "https://via.placeholder.com/150",
      "status": "your_move"
    },
    {
      "name": "Anne",
      "message": "Nice try🙌🏾",
      "time": "19:21",
      "avatar": "https://via.placeholder.com/150",
      "status": "unread_count",
      "count": 2
    },
    {
      "name": "Emily",
      "message": "We should try that new café you mentioned",
      "time": "19:21",
      "avatar": "https://via.placeholder.com/150",
      "status": "read"
    },
    {
      "name": "Mitchell",
      "message": "Cool",
      "time": "Monday",
      "avatar": "https://via.placeholder.com/150",
      "status": "read"
    },
    {
      "name": "Laura",
      "message": "Typing message...",
      "time": "19:21",
      "avatar": "https://via.placeholder.com/150",
      "status": "typing"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Your Matches (7)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: matches.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(matches[index]['avatar']),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Chat",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: matches.length,
              itemBuilder: (context, index) {
                var chat = matches[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 29,
                    backgroundImage: NetworkImage(chat['avatar']),
                  ),
                  title: Text(chat['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    chat['message'],
                    style: TextStyle(
                      color: chat['status'] == 'typing'
                          ? Colors.orange
                          : Colors.black54,
                      fontStyle: chat['status'] == 'typing'
                          ? FontStyle.italic
                          : FontStyle.normal,
                    ),
                  ),
                  trailing: Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(chat['time'],
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black54)),
                      if (chat['status'] == 'read')
                        const Icon(Icons.done_all,
                            size: 16, color: Colors.orange),
                      if (chat['status'] == 'your_move')
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text("Your move",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        ),
                      if (chat['status'] == 'unread_count')
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: Text("${chat['count']}",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                    ],
                  )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
