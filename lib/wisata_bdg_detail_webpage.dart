import 'package:flutter/material.dart';
import 'package:flutter_dicodinga/models/touris_item.dart';

var infoTextStyle = const TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 14,
);

class DetailWisataBandung extends StatefulWidget {
  const DetailWisataBandung({Key? key, required this.tourismPlace})
      : super(key: key);

  final TourismPlace tourismPlace;

  @override
  State<DetailWisataBandung> createState() => _DetailWisataBandungState();
}

class _DetailWisataBandungState extends State<DetailWisataBandung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Wisata'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return DetailWebPage(tourismPlace: widget.tourismPlace);
            } else {
              return DetailMobilePage(tourismPlace: widget.tourismPlace);
            }
          }),
        ),
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({Key? key, required this.tourismPlace})
      : super(key: key);
  final TourismPlace tourismPlace;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          children: [
            Hero(
              tag: 'wisata_detail_${tourismPlace.imageUrls}',
              child: Image.asset(
                tourismPlace.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  const FavoriteButtons()
                ],
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
            left: 14,
            right: 14,
          ),
          child: Text(
            tourismPlace.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: 'Staatliches'),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 14,
            right: 14,
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.calendar_today),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    tourismPlace.openDays,
                    style: infoTextStyle,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.access_time),
                  const SizedBox(height: 8),
                  Text(
                    tourismPlace.openTime,
                    style: infoTextStyle,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.monetization_on),
                  const SizedBox(height: 8),
                  Text(
                    tourismPlace.ticketPrice,
                    style: infoTextStyle,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 14, left: 15, right: 15, bottom: 16),
          child: Text(
            tourismPlace.description,
            style: TextStyle(
              fontSize: 15.5,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.5),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 150,
          margin: const EdgeInsets.only(top: 20),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: tourismPlace.imageUrls.map((url) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
            // children: [
            //   Padding(
            //     padding: const EdgeInsets.all(4.0),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(10),
            //       child: Image.network(
            //         'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.all(4.0),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(10),
            //       child: Image.network(
            //         'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.all(4.0),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(10),
            //       child: Image.network(
            //         'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            // ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}

class DetailWebPage extends StatefulWidget {
  const DetailWebPage({Key? key, required this.tourismPlace}) : super(key: key);
  final TourismPlace tourismPlace;

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
      child: Center(
        child: SizedBox(
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Wisata Kota Bandung',
                style: TextStyle(
                  fontFamily: 'Staatliches',
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Hero(
                              tag:
                                  'wisata_detail_${widget.tourismPlace.imageUrls}',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  widget.tourismPlace.imageAsset,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                        icon: const Icon(Icons.arrow_back),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        }),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        // Penggunaan Scroll controller
                        // https://stackoverflow.com/questions/69853729/flutter-the-scrollbars-scrollcontroller-has-no-scrollposition-attached
                        Scrollbar(
                          thumbVisibility: true,
                          controller: _scrollController,
                          child: Container(
                            height: 150,
                            margin: const EdgeInsets.only(bottom: 16),
                            child: ListView(
                              shrinkWrap: true,
                              controller: _scrollController,
                              scrollDirection: Axis.horizontal,
                              children:
                                  widget.tourismPlace.imageUrls.map((url) {
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      url,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 4,
                                left: 14,
                                right: 14,
                              ),
                              child: Text(
                                widget.tourismPlace.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Staatliches'),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_today),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      widget.tourismPlace.openDays,
                                      style: infoTextStyle,
                                    ),
                                  ],
                                ),
                                const FavoriteButtons()
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.access_time),
                                const SizedBox(width: 8),
                                Text(
                                  widget.tourismPlace.openTime,
                                  style: infoTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: <Widget>[
                                const Icon(Icons.monetization_on),
                                const SizedBox(width: 8),
                                Text(
                                  widget.tourismPlace.ticketPrice,
                                  style: infoTextStyle,
                                )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 14,
                              ),
                              child: Text(
                                widget.tourismPlace.description,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5),
                                  fontFamily: 'Oxygen',
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}

class FavoriteButtons extends StatefulWidget {
  const FavoriteButtons({Key? key}) : super(key: key);

  @override
  State<FavoriteButtons> createState() => _FavoriteButtonsState();
}

class _FavoriteButtonsState extends State<FavoriteButtons> {
  bool isFavoritePlace = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        onPressed: () {
          setState(() {
            isFavoritePlace = !isFavoritePlace;
          });
        },
        icon: Icon(
          isFavoritePlace ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
      ),
    );
  }
}
