import 'package:flutter/material.dart';

const KprimaryColour=Color(0xFF0C9869);
const KTextColour=Color(0xFF3C4046);
const KBackgroundColour=Color(0xFFF9F8FD);

const double KdefaultPadding=20.0;

const KTextFieldDecoration=InputDecoration(
                hintText: 'Enter your value',
                contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent,width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  
                ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(32.0)),
                   borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2.0),
                 ),
              );

  const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);