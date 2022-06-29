import 'package:flutter/material.dart';

class ListDataSampel extends StatelessWidget {
  const ListDataSampel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Data'),
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
          child: ListDinamisBuilderSeparated(),
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
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.orange),
            ),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.orange),
            ),
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.orange),
            ),
            child: const Center(
              child: Text(
                '4',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListDinamisOne extends StatefulWidget {
  const ListDinamisOne({Key? key}) : super(key: key);

  @override
  State<ListDinamisOne> createState() => _ListDinamisOneState();
}

class _ListDinamisOneState extends State<ListDinamisOne> {
  final List<int> _numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ListView(
        children: _numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              border: Border.all(color: Colors.green),
            ),
            child: Center(
              child: Text(
                '$number', // Ditampilkan sesuai item
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ListDinamisBuilder extends StatefulWidget {
  const ListDinamisBuilder({Key? key}) : super(key: key);

  @override
  State<ListDinamisBuilder> createState() => _ListDinamisBuilderState();
}

class _ListDinamisBuilderState extends State<ListDinamisBuilder> {
  final List<int> _numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              border: Border.all(color: Colors.orange),
            ),
            child: Center(
              child: Text(
                'Nomor ${_numberList[index]}',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
        itemCount: _numberList.length,
      ),
    );
  }
}

class ListDinamisBuilderSeparated extends StatefulWidget {
  const ListDinamisBuilderSeparated({Key? key}) : super(key: key);

  @override
  State<ListDinamisBuilderSeparated> createState() =>
      _ListDinamisBuilderSeparatedState();
}

class _ListDinamisBuilderSeparatedState
    extends State<ListDinamisBuilderSeparated> {
  final List<int> _numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                border: Border.all(color: Colors.orange),
              ),
              child: Center(
                child: Text(
                  'Separated ${_numberList[index]}',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 8,
              thickness: 5,
              color: Colors.red,
            );
          },
          itemCount: _numberList.length),
    );
  }
}
