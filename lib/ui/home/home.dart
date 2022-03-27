import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:links_shortener/di/di.dart';
import 'package:links_shortener/ui/home/widgets/widgets.dart';
import 'package:links_shortener/ui/widgets/dialog_progress.dart';
import 'package:presentation/presentation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShortenLinkCubit>(
      create: (context) => getIt.get<ShortenLinkCubit>(),
      child: BlocBuilder<ShortenLinkCubit, ShortenLinkState>(
        builder: (context, ShortenLinkState state) => Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                title: const Text("Link Shortener App"),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10), //TODO: Create spacerWidget
                  ShortenerUrlBox(state),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Recently shortened URLs",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  (state.shortenedUrls.isEmpty)
                      ? const Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: Center(
                            child: Text(
                              "Add an url to shorten",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        )
                      : Flexible(child: ShortenedUrlsList(state)),
                ],
              ),
            ),
            DialogProgress(state.isLoading)
          ],
        ),
      ),
    );
  }
}
