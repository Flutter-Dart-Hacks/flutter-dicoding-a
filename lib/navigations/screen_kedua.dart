import 'package:flutter/material.dart';

class ScreenKedua extends StatelessWidget {
  const ScreenKedua({Key? key, this.stringMessage = 'Default value'})
      : super(key: key);

  final String stringMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Kedua'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark, color: Colors.white),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.cyan,
              child: Text(
                stringMessage,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Kembali',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.indigo,
            )
            // Expanded(
            //   child: Container(
            //     color: Colors.indigo,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
