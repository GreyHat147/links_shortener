import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';

class ShortenedUrlsList extends StatelessWidget {
  const ShortenedUrlsList(this.state, {Key? key}) : super(key: key);

  final ShortenLinkState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      itemCount: state.shortenedUrls.length,
      itemBuilder: (context, index) {
        ShortenedUrl shortenedUrl = state.shortenedUrls.toList()[index];
        return ItemShortenedUrl(
          alias: shortenedUrl.alias,
          shortenedUrl: shortenedUrl.url,
          initialUrl: shortenedUrl.initialUrl,
          bgTileColor: (index.isEven) ? Colors.white : Colors.grey[100]!,
        );
      },
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
      tileColor: bgTileColor,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          "Shortened URL: $shortenedUrl",
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      subtitle: Text(
        'Initial Url: $initialUrl',
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}
