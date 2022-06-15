import 'package:flutter/material.dart';

class ButtonInputPage extends StatelessWidget {
  const ButtonInputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Input Ex1'),
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
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // Ganti warna button
                // https://www.flutterbeads.com/text-button-color-in-flutter/
                const Text('Button Elevated'),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Tombol Elevated Sampel'),
                ),
                const Text('Button Elevated'),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Tombol Elevated Sampel'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: const Text('Text Button'),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Outlined Button'),
                OutlinedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    side: BorderSide(
                      color: Colors.orange.shade400,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    'Sampel Outline Button',
                    style: TextStyle(color: Colors.green.shade600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Contoh Icon Button'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_down,
                    semanticLabel: 'Turunkan volume',
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Contoh Dropdown Item'),
                const DropdownButtonSampel(
                  listTitle: ['Kotlin', 'Darts', 'Java', 'JavaScript'],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Contoh Dropdown Item'),
                const DropdownMenuButton(
                  listTitle: ['Angular', 'React', 'Vue'],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownButtonSampel extends StatefulWidget {
  final List<String> listTitle;
  const DropdownButtonSampel({Key? key, required this.listTitle})
      : super(key: key);

  @override
  State<DropdownButtonSampel> createState() => _DropdownButtonSampelState();
}

class _DropdownButtonSampelState extends State<DropdownButtonSampel> {
  String dropdownValue = 'Kotlin';

  Iterable<DropdownMenuItem<String>> createListItemDrodpdown() {
    Iterable<DropdownMenuItem<String>> listDropdownItem =
        widget.listTitle.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    });

    return listDropdownItem;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: DropdownButton(
        items: createListItemDrodpdown().toList(),
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value ?? 'language';
          });
        },
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward_outlined),
        hint: const Text('Pilih bahasa pemrograman'),
        underline: Container(
          height: 2,
          color: Colors.green,
        ),
      ),
    );
  }
}

class DropdownMenuButton extends StatefulWidget {
  final List<String> listTitle;

  const DropdownMenuButton({Key? key, required this.listTitle})
      : super(key: key);

  @override
  State<DropdownMenuButton> createState() => _DropdownMenuButtonState();
}

class _DropdownMenuButtonState extends State<DropdownMenuButton> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'Dart',
            child: Text('Dart'),
          ),
          DropdownMenuItem<String>(
            value: 'Kotlin',
            child: Text('Kotlin'),
          ),
          DropdownMenuItem<String>(
            value: 'Swift',
            child: Text('Swift'),
          ),
        ],
        value: language,
        hint: const Text('Select Bahasa Pemrograman'),
        underline: Container(
          height: 2,
          color: Colors.green,
        ),
        focusColor: Colors.orange,
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        },
      ),
    );
  }
}
