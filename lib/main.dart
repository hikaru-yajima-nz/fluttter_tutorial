import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(appTitle),
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),//全体の余白
      
      child: Row(
        children: [
          Expanded( //Expandedでいい感じの配置になった
            child:
            Column(
              mainAxisSize: MainAxisSize.min, 
              //最小サイズに合わせる
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(name,
                      style: const TextStyle(   //constつけた方がいいよって注意されたため
                      fontWeight: FontWeight.bold,
                      ),
              ),
              Text(location,
                      style: TextStyle(
                        color: Colors.grey[500],
                        )
              ),
              ]
            )
          ),
          Icon(Icons.star,color: Colors.red[500],),
          const Text('41'),
        ],
      ),
    );
  }
}
