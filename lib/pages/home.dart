import 'dart:math';
import 'package:flutter/material.dart';
import 'package:keys/pages/list_page.dart';
import 'package:keys/pages/swap_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        child: Form(
          key: formKey,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) {
                  return ListPage();
                }));
              },
              child: Text("Go List page"),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) {
                  return SwapWidget();
                }));
              },
              child: Text("Swap widget problem"),
            ),
          ]),
        ),
      )),
    );
  }
}
