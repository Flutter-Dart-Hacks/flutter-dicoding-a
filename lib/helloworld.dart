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
              ),
              Container(
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(
                  top: 40,
                ),
                decoration: BoxDecoration(
                  color: Colors.red.shade600,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(3, 6),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Hi',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.red.shade600,
                  border: Border.all(width: 3, color: Colors.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
                // Centering dengan menggunakan
                // Alignment https://stackoverflow.com/questions/50554110/how-do-i-center-text-vertically-and-horizontally-in-flutter
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Hei',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 40,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.green.shade400,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Text berada di tengah\nLorem ipsum dolor sit amet, consectetur adipiscing elit',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Colors.red.shade700),
                    textAlign: TextAlign.center,
                  ),
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
