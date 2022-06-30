import 'package:flutter/material.dart';

class MediaQuerySampel extends StatelessWidget {
  const MediaQuerySampel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
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
      backgroundColor: Colors.green,
      body: const SafeArea(
        child: MediaQuerySatu(),
      ),
    );
  }
}

class MediaQuerySatu extends StatelessWidget {
  const MediaQuerySatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Screen width: ${screenSize.width.toStringAsFixed(2)}',
          style: const TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
        Text(
          'Orientation: $orientation',
          style: const TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class LayoutBuilderSampel extends StatelessWidget {
  const LayoutBuilderSampel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
