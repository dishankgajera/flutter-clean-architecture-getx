// Widget to show user info
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  const UserCard({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(name),
      ),
    );
  }
}