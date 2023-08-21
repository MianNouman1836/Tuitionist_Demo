import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Feedback Page", style: TextStyle(fontSize: 50),));
  }
}

