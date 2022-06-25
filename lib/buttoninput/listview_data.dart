import 'package:flutter/material.dart';

class ListViewDataPage extends StatelessWidget {
  const ListViewDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Sampels'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(14),
              child: Column(
                children: const [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListStatisSampel extends StatefulWidget {
  const ListStatisSampel({Key? key}) : super(key: key);

  @override
  State<ListStatisSampel> createState() => _ListStatisSampelState();
}

class _ListStatisSampelState extends State<ListStatisSampel> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
