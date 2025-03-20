import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildChatItem("Muhammad Yusran", "Hallo", "08:49"),
          _buildChatItem("Rudi Motor", "Terima kasih", "Kemarin"),
          _buildChatItem("Affan Fathir", "Baik", "07/11/24"),
          _buildChatItem("JC Motor Rental", "Oke", "10/06/23"),
        ],
      ),
    );
  }

  Widget _buildChatItem(String name, String message, String time) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.grey,
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message),
      trailing: Text(time, style: const TextStyle(color: Colors.grey)),
    );
  }
}
