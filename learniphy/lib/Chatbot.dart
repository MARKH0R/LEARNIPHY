import 'package:flutter/material.dart';

class ChatbotPage extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final List<Map<String, dynamic>> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isEmpty) return;

    setState(() {
      _messages.add({
        'text': _controller.text,
        'isUser': true,
      });
      _messages.add({
        'text': 'This is a bot response to "${_controller.text}"',
        'isUser': false,
      });
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: message['isUser'] ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: message['isUser'] ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        message['text'],
                        style: TextStyle(
                          color: message['isUser'] ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
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
