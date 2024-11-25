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
        body: const Center(
          child: TitleSection(name: 'テストでdesuす'),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    //required this.location,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min, 
            //最小サイズに合わせる
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Row1-1'),
            Text('Row1-2'),
          ]),
          Icon(Icons.star),
          Text('Row3'),
        ],
      ),
    );
  }
}
