import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _firestrore = FirebaseFirestore.instance;
User? loggedInUser;

class ChatScreen extends StatefulWidget {
  static const String id = 'ChatScreen';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? text;
  String? sender;

  final _auth = FirebaseAuth.instance;
  final TextEditingController _messageEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  //method for getting current user of app
  void getCurrentUser() async {
    try {
      final currentuser = await _auth.currentUser;
      if (currentuser != null) {
        loggedInUser = currentuser;
      }
    } on Exception catch (e) {
      // TODO
      print(e);
    }
  }

//method for loading firestore data from a list
  void getMessagesFromDB() async {
    var messages = await _firestrore.collection('messages').get();
    for (var msg in messages.docs) {
      print(msg.data());
    }
  }

  //method for getting database details from stream
  void messageStream() async {
    await for (var snapshots
        in _firestrore.collection('messages').snapshots()) {
      for (var messages in snapshots.docs) {
        print(messages.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
                _auth.signOut();
                Navigator.pop(context);
              }),
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                //Implement referesh functionality
                //getMessagesFromDB();
                messageStream();
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessageStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _messageEditingController,
                      onChanged: (value) {
                        //Do something with the user input.

                        text = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      //Implement send functionality.
                      await _firestrore.collection('messages').add({
                        'text': text,
                        'sender': loggedInUser!.email,
                      });

                      _messageEditingController.clear();
                      //addUser();
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageStream extends StatelessWidget {
  const MessageStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestrore.collection('messages').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          final messages = snapshot.data!.docs.reversed;
          List<MessageBubble> messagesWidgetList = [];
          for (var message in messages) {
            final messageText = message.get('text');
            final messageSender = message.get('sender');

            final currentuser = loggedInUser!.email;

            final messageWidget = MessageBubble(
              text: messageText,
              sender: messageSender,
              isMe: currentuser == messageSender,
            );

            messagesWidgetList.add(messageWidget);
          }
          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              children: messagesWidgetList,
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String? text;
  final String? sender;
  final bool isMe;

  MessageBubble({
    required this.sender,
    required this.text,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
            color: isMe ? Colors.lightBlueAccent : Colors.lightBlue,
            elevation: 5.0,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '$text',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
