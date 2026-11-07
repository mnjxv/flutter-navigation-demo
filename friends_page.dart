import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FRIENDS"), centerTitle: true),
      body: const Center(child: Text("Your friends list will appear here!")),
    );
  }
}