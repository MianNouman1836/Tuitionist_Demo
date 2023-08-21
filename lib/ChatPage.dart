import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatLayout(),
    );
  }
}

class ChatLayout extends StatefulWidget {
  @override
  _ChatLayoutState createState() => _ChatLayoutState();
}

class _ChatLayoutState extends State<ChatLayout> {
  TextEditingController _messageController = TextEditingController();
  List<Message> _messages = [
    Message(content: 'Hello', isSent: false),
    Message(content: 'Hi there!', isSent: true),
    Message(content: 'How are you?', isSent: true),
    Message(content: 'I am good, thank you!', isSent: false),
  ];

  void _sendMessage(String content) {
    if (content.isNotEmpty) {
      setState(() {
        _messages.add(Message(content: content, isSent: true));
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return MessageBubble(
                message: _messages[index],
              );
            },
          ),
        ),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type a message...',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.emoji_emotions),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.mic),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Message {
  final String content;
  final bool isSent;

  Message({required this.content, required this.isSent});
}

class MessageBubble extends StatelessWidget {
  final Message message;

  MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      alignment: message.isSent ? Alignment.centerRight : Alignment.centerLeft,
      child: Text(
        message.content,
        style: TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
        color: message.isSent ? Colors.grey : Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
    );

  }
}
