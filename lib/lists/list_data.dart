import 'package:flutter/material.dart';

class ListDataSampel extends StatelessWidget {
  const ListDataSampel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Field Ex1'),
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
      body: const SafeArea(
        child: Scrollbar(
          child: ListBiasa(),
        ),
      ),
    );
  }
}

class ListBiasa extends StatefulWidget {
  const ListBiasa({Key? key}) : super(key: key);

  @override
  State<ListBiasa> createState() => _ListBiasaState();
}

class _ListBiasaState extends State<ListBiasa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.orange),
            ),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 20, color: Colors.red.shade600),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.orange),
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 20, color: Colors.red.shade600),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.orange),
            ),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 20, color: Colors.red.shade600),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.orange),
            ),
            child: Center(
              child: Text(
                '4',
                style: TextStyle(fontSize: 20, color: Colors.red.shade600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
