import 'package:flutter/material.dart';
import 'package:links_shortener/ui/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Link Shortener App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10),
            ShortenerUrlBox(),
            SizedBox(height: 10),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Recently shortened URLs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Flexible(child: ShortenedUrlsList()),
          ],
        ),
      ),
    );
  }
}
