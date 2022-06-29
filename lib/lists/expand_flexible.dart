import 'package:flutter/material.dart';

class ExpandFlexibleSampel extends StatelessWidget {
  const ExpandFlexibleSampel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expand Flexible'),
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
        // child: Scrollbar(
        //   child: SingleChildScrollView(
        //     child: Container(
        //       // height: 800,
        //       margin: const EdgeInsets.all(2),
        //       child: const FlexibleSampelDual(),
        //     ),
        //   ),
        // ),
        child: Container(
          margin: const EdgeInsets.all(1),
          child: const FlexibleSampelDual(),
        ),
      ),
    );
  }
}

class ExpandedSampelData extends StatefulWidget {
  const ExpandedSampelData({Key? key}) : super(key: key);

  @override
  State<ExpandedSampelData> createState() => _ExpandedSampelDataState();
}

class _ExpandedSampelDataState extends State<ExpandedSampelData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.orange,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.purple,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }
}

class ExpandedSampelDua extends StatelessWidget {
  const ExpandedSampelDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.amber,
            width: 100,
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.amber,
            width: 100,
          ),
        ),
      ],
    );
  }
}

class FlexibleSampel extends StatelessWidget {
  const FlexibleSampel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 50,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.orange,
                height: 50,
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 219, 169, 17),
                height: 50,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 50,
              ),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                color: Colors.amber,
                height: 50,
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                color: Colors.orange,
                height: 50,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class FlexibleSampelDual extends StatelessWidget {
  const FlexibleSampelDual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Flexible(
        //   flex: 2,
        //   fit: FlexFit.loose,
        //   child: Container(
        //     height: 100,
        //     color: Colors.cyan,
        //   ),
        // ),
        // https://api.flutter.dev/flutter/widgets/Flexible-class.html
        Container(
          height: 100,
          color: Colors.cyan,
        ),
        Flexible(
          flex: 4,
          child: Container(
            color: Colors.teal,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.indigo,
          ),
        )
      ],
    );
  }
}
