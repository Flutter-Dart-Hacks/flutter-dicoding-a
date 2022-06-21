import 'package:flutter/material.dart';

class SampelFontPage extends StatelessWidget {
  const SampelFontPage({Key? key}) : super(key: key);

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
            constraints: const BoxConstraints(minWidth: 200),
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: const [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sampel Fonts',
                    style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Sampel Fonts',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
