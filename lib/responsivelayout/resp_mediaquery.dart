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
        child: ResponsiveGrids(),
      ),
    );
  }
}

class MediaQuerySatu extends StatelessWidget {
  const MediaQuerySatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Penggunaan Media Query
    // https://www.dicoding.com/academies/159/tutorials/16760
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
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.all(1),
      child: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'LayoutBuilder: ${constraints.maxWidth}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      Text(
                        'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'LayoutBuilder: Maxwidth - ${constraints.maxWidth} \n Minwidth - ${constraints.minWidth} \n Maxheight - ${constraints.maxHeight}',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Responsive Grid
// https://www.dicoding.com/academies/159/tutorials/16760
class ResponsiveGrids extends StatelessWidget {
  const ResponsiveGrids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return ListView(
            children: generateContainerList(),
          );
        } else if (constraints.maxWidth < 900) {
          return GridView.count(
            crossAxisCount: 2,
            children: generateContainerList(),
          );
        } else {
          return GridView.count(
            crossAxisCount: 6,
            children: generateContainerList(),
          );
        }
      }),
    );
  }
}

List<Widget> generateContainerList() {
  return List.generate(20, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.amber,
      height: 200,
    );
  });
}
