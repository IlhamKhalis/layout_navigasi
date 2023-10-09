import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Danau Segara Anak (Lake Segara Anak)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'NTB, Indonesia',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        /* soal 3*/
        const Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

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

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(
            const Color.fromRGBO(33, 150, 243, 1), Icons.call, 'CALL'),
        _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Segara Anak adalah danau yang ada di kawah Gunung Rinjani, tepatnya di daerah Desa Sembalun Lawang, Pulau Lombok, Nusa Tenggara Barat, Indonesia. Nama Segara Anak memiliki arti "anak laut" dalam bahasa Sasak. Danau ini terletak pada ketinggian kurang lebih 2000 mdpl.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Ilham Khalis Putra Agatha 2141720230',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset('images/lake.jpg'),
            titleSection,
            buttonSection,
            textSection,
          ],
        )
      ),
    );
  }
}