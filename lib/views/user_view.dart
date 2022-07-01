import 'dart:math';

import 'package:flutter/material.dart';
import '../models/user.dart';

class UserItem extends StatefulWidget {
  User user;
  UserItem({Key? key, required this.user}) : super(key: key);

  @override
  State<UserItem> createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  Random random = Random();
  late Color color;

  @override
  void initState() {
    color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListTile(
        title: Text(widget.user.name),
        subtitle: Text(widget.user.phoneNumber),
        trailing: const Icon(
          Icons.phone,
          color: Colors.green,
        ),
      ),
    );
  }
}
