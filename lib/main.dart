import 'package:flutter/material.dart';
import 'package:links_shortener/di/di.dart';
import 'package:links_shortener/ui/home/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  runApp(const LinkShortenerApp());
}

class LinkShortenerApp extends StatelessWidget {
  const LinkShortenerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link Shortener',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
