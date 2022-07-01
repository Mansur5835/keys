import 'dart:math';
import 'package:flutter/material.dart';
import 'package:keys/pages/list_page.dart';

import '../models/user.dart';
import '../views/user_view.dart';

class SwapWidget extends StatefulWidget {
  const SwapWidget({Key? key}) : super(key: key);

  @override
  State<SwapWidget> createState() => _SwapWidgeteState();
}

class _SwapWidgeteState extends State<SwapWidget> {
  //! ushbu joyda key berilmasa faqat userning malumotlari o`rgaradi widgetning rangi o`zgarmaydi
  List<UserItem> usersList = [
    UserItem(key: UniqueKey(), user: User(name: "Jone", phoneNumber: "123")),
    UserItem(key: UniqueKey(), user: User(name: "Adam", phoneNumber: "456")),
    UserItem(key: UniqueKey(), user: User(name: "Mortred", phoneNumber: "789")),
    UserItem(key: UniqueKey(), user: User(name: "Slark", phoneNumber: "089")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: usersList,
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          usersList.add(usersList.removeAt(0));
          setState(() {});
        },
        child: Icon(Icons.repeat),
      ),
    );
  }
}
