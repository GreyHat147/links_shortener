import 'package:flutter/material.dart';

class ShortenedUrlsList extends StatelessWidget {
  const ShortenedUrlsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ItemShortenedUrl(
        alias: "1",
        shortenedUrl: "http",
        initialUrl: "httpssss",
        bgTileColor: (index.isEven) ? Colors.white : Colors.grey[200]!,
      ),
    );
  }
}

class ItemShortenedUrl extends StatelessWidget {
  const ItemShortenedUrl({
    required this.alias,
    required this.shortenedUrl,
    required this.initialUrl,
    required this.bgTileColor,
    Key? key,
  }) : super(key: key);

  final String alias;
  final String shortenedUrl;
  final String initialUrl;
  final Color bgTileColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //tileColor: bgTileColor,
      title: Text("$shortenedUrl - $alias"),
      subtitle: Text('Initial Url: $initialUrl'),
    );
  }
}
