import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Senja Yang Mempesona',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.green[500],
          ),
          const Text('20'),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Di ufuk barat, senja berlabuh'
        'Warnanya merah, hangat dan menggoda'
        'Langit terhampar, indah tanpa tara'
        'Senja, saat yang menyentuh jiwa'
        'Di langit senja, awan berarak'
        'Seperti kuas menyapu guratan'
        'Warna-warna berpadu, menjadi satu'
        'Lukisan alam yang tak tergantikan'
        'Dalam senja, kisah pun tercipta'
        'Kehidupan yang mengalir dengan cinta'
        'Momen yang berharga, terukir abadi'
        'Di ruang dan waktu yang tak terhingga'
        'Senja, hadirkanlah keindahan yang abadi',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter layout: Septi Lutfiana 2141720038',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/Senja.jpg',
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

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
