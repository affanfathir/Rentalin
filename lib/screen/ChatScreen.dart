import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChatListScreen(),
  ));
}

class ChatListScreen extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {'name': 'Muhammad Yusran', 'message': 'Hallo', 'time': '08:49'},
    {'name': 'Rudi Motor', 'message': 'Terima kasih', 'time': 'Kemarin'},
    {'name': 'Affan Fathir', 'message': 'Baik', 'time': '07/11/24'},
    {'name': 'JC Motor Rental', 'message': 'Oke', 'time': '10/06/23'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F8),
      appBar: AppBar(title: Text('Chat')), 
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: Colors.grey.shade300),
            title: Text(chats[index]['name']!, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(chats[index]['message']!),
            trailing: Text(chats[index]['time']!),
            onTap: () {
              // Menggunakan push biasa supaya bisa kembali
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(name: chats[index]['name']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  final String? name;
  ChatScreen({this.name});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> messages = [];

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name ?? 'Chat'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke ChatListScreen
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(messages[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Ketik pesan...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.teal),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
