import 'package:flutter/material.dart';

final bucket = PageStorageBucket();

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageStorage(
        bucket: bucket,
        child: ListView(
            key: const PageStorageKey<String>("myItems"),
            children: List.generate(
                100,
                (index) => ListTile(
                      title: Text("Item $index"),
                    ))),
      ),
    );
  }
}
