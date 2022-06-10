import 'package:flutter/material.dart';

class HelloWorlds extends StatefulWidget {
  const HelloWorlds({Key? key}) : super(key: key);

  @override
  State<HelloWorlds> createState() => _HelloWorldsState();
}

class _HelloWorldsState extends State<HelloWorlds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Dunia Dart'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red.shade400,
        tooltip: 'Tambah teks',
        child: const Icon(
          Icons.add,
          size: 36,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderJudul(teksJudul: 'Hello Dart Dunia'),
              const BiggerText(textjudul: 'Perbesar Perkecil'),
              Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(
                  top: 40,
                ),
                child: const Text(
                  'Hi',
                  style: TextStyle(fontSize: 40),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderJudul extends StatelessWidget {
  final String teksJudul;

  const HeaderJudul({Key? key, required this.teksJudul}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Center(
        child: Text(
          teksJudul,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String textjudul;

  const BiggerText({Key? key, required this.textjudul}) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.textjudul,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
          onPressed: () {
            setState(
              () {
                _textSize += 1;
              },
            );
          },
          child: const Text('Perbesar Teks'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(
              () {
                if (_textSize > 10) {
                  setState(() {
                    _textSize -= 1;
                  });
                }
              },
            );
          },
          child: const Text('Perkecil Teks'),
        )
      ],
    );
  }
}
