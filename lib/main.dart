import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget get titleSection => Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: const Text(
                  'Wisata Gunung di Batu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Batu, Malang, Indonesia',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        /* soal 3*/
        Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Batu adalah sebuah kota di Provinsi Jawa Timur, Indonesia. Kota ini terletak sekitar 20 kilometer di sebelah barat laut Kota Malang. Batu dikenal sebagai tujuan wisata yang populer, terutama karena udaranya yang sejuk dan pemandangan alamnya yang indah. Beberapa tempat wisata terkenal di Batu antara lain Jatim Park, Museum Angkut, dan Selecta.'
        '- Iga Ramadana Sahputra - 2341760083',
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Iga Ramadana Sahputra - 2341760083',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: Column(
          children: [
            Image.asset(
              'images/image.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
