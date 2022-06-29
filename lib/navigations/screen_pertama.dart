import 'package:flutter/material.dart';
import 'package:flutter_dicodinga/navigations/screen_kedua.dart';

class ScreenPertama extends StatelessWidget {
  const ScreenPertama({Key? key}) : super(key: key);

  final String messages = 'Pesan dari halaman pertama screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Pertama'),
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
              color: Colors.cyan,
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.teal,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ScreenKedua(
                              stringMessage: messages,
                            );
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Pindah Halaman',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
