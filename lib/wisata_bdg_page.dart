import 'package:flutter/material.dart';
import 'package:flutter_dicodinga/models/touris_item.dart';
import 'package:flutter_dicodinga/wisata_bdg_detail_page.dart';

class WisataBandungPage extends StatefulWidget {
  const WisataBandungPage({Key? key}) : super(key: key);

  @override
  State<WisataBandungPage> createState() => _WisataBandungPageState();
}

class _WisataBandungPageState extends State<WisataBandungPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
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
        child: Container(
          margin: const EdgeInsets.all(1),
          child: const ListWisata(),
        ),
      ),
    );
  }
}

class ListWisata extends StatelessWidget {
  const ListWisata({Key? key}) : super(key: key);

  createClearHistoryRoute(BuildContext context, TourismPlace tourismPlace) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return DetailWisataBandung(tourismPlace: tourismPlace);
    }), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        TourismPlace tourismPlace = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return DetailWisataBandung(
            //     tourismPlace: tourismPlace,
            //   );
            // }));
            createClearHistoryRoute(context, tourismPlace);
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Hero(
                    tag: 'wisata_detail_${tourismPlace.imageUrls}',
                    child: Image.asset(
                      tourismPlace.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tourismPlace.name,
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          tourismPlace.location,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
